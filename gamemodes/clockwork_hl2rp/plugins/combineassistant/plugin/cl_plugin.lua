local Clockwork = Clockwork;
local PLUGIN = PLUGIN;

-- Blt950's Combine Assistant

local assistantEnabled = false

local stunstickRaised = false
local stunstickState = false
local stunstickLastState = false
local lastActiveWep = ""
local currentActiveWep = ""
local stunstickVoltage = "low"

local buddies = {}
local patrolGroups = {"ALPHA", "BETA", "CHARLIE", "DEFENDERS", "DELTA", "ECHO", "FOXTROT", "GAIA"}
local districts = {"District 1", "District 2", "District 3", "District 4"}
local patrolGroup = ""
local patrolUnits = ""

-- local dispatches = {"Anti-Citizen", "Anti-Civil", "Lockdown", "Inspection", "Inspection 2", "Relocation", "Citizenship", "Failure" }

local backupCodes = {"КОД 1 Выносить приговор по усмотрению, тревога.", "КОД 2 Оружие в руках, приготовиться к сдерживанию.", "КОД 3 Опасность не подтверждена, ожидайте.", "КОД 4 Ситуация под контролем, отбой тревоге."}

function showCAssistantMenu()
	if LocalPlayer():GetFaction() != "Metropolice Force" then return end;
	local MENU = DermaMenu()
	
	if assistantEnabled then
		MENU:AddOption("Blt950's Combine Assistant", function() chat.AddText(Color(200,100,100),"Blt950's Combine Assistant v.0.3 - Disabled") toggleAssistant() end ):SetImage( "icon16/flag_green.png" )
	else
		MENU:AddOption("Blt950's Combine Assistant", function() chat.AddText(Color(200,100,100),"Blt950's Combine Assistant v.0.3 - Enabled") toggleAssistant() end ):SetImage( "icon16/flag_red.png" )
	end
	MENU:AddSpacer()
	MENU:AddSpacer()
	
	// Radio commands
	local RAD_SUBMENU, RAD_SUBMENU_PNL = MENU:AddSubMenu("Radio")
	RAD_SUBMENU_PNL:SetImage( "icon16/transmit_blue.png" )
	
	RAD_SUBMENU:AddOption("Ask for: Currently established groups", function() RunConsoleCommand("say", "/radio Requesting information on current established groups.") end)
	RAD_SUBMENU:AddOption("Reply on: Currently established groups", function() RunConsoleCommand("say", "/radio Group "..patrolGroup..", Units "..patrolUnits.." reporting in.") end)
	
	local RAD_GROUP_SUBSUBMENU = RAD_SUBMENU:AddSubMenu("Establish Patrol")
	for k,v in pairs(patrolGroups) do
		local RAD_GROUP_SUBSUBSUBMENU = RAD_GROUP_SUBSUBMENU:AddSubMenu("Group "..v)
		for _, x in pairs(districts) do
			RAD_GROUP_SUBSUBSUBMENU:AddOption(x, function()
				RunConsoleCommand("say", "/radio Unit "..printGroup()..". Establishing group "..v..". "..x..". SC: Green") 
				patrolGroup = v
			end)
		end
	end
	
	local RAD_GROUPDISTRICT_SUBSUBMENU = RAD_SUBMENU:AddSubMenu("Moving to District")
	for k,v in pairs(districts) do
		RAD_GROUPDISTRICT_SUBSUBMENU:AddOption(v, function()
			RunConsoleCommand("say", "/radio Unit "..printGroup()..". Group "..patrolGroup..". Moving to "..v..". SC: Green") 
		end)
	end
	
	RAD_SUBMENU:AddOption("Disband Group", function() RunConsoleCommand("say", "/radio Unit "..patrolUnits..". Disbanding group "..patrolGroup..".") end)
	RAD_SUBMENU:AddSpacer()
	local RAD_BACKUP_SUBSUBMENU, RAD_BACKUP_SUBSUBMENU_PNL = RAD_SUBMENU:AddSubMenu("Backup")
	RAD_BACKUP_SUBSUBMENU_PNL:SetImage( "icon16/exclamation.png" )
	for k,v in pairs(districts) do
		local RAD_BACKUP_SUBSUBSUBMENU = RAD_BACKUP_SUBSUBMENU:AddSubMenu(v)
		for _, x in pairs(backupCodes) do
			RAD_BACKUP_SUBSUBSUBMENU:AddOption(x, function()
				RunConsoleCommand("say", "/radio 10-78, need assistance. "..v..". "..x..".") 
			end)
		end
	end
	
	// Dispatch
	
	-- local DIS_SUBMENU, DIS_SUBMENU_PNL = MENU:AddSubMenu("Dispatch")
	-- DIS_SUBMENU_PNL:SetImage( "icon16/feed.png" )
	-- for k, v in pairs(dispatches) do
	-- 	DIS_SUBMENU:AddOption(v, function() RunConsoleCommand("say", "/dispatch "..v) end)
	-- end
	
	// Performances
	local PER_SUBMENU, PER_SUBMENU_PNL = MENU:AddSubMenu("Performances")
	PER_SUBMENU_PNL:SetImage( "icon16/emoticon_smile.png" )
	
	local PER_STUN_SUBMENU, PER_STUN_SUBMENU_PNL = PER_SUBMENU:AddSubMenu("Stunstick Voltage")
	PER_STUN_SUBMENU_PNL:SetImage( "icon16/lightning.png" )
	
	PER_STUN_SUBMENU:AddOption("Low", function() stunstickVoltage = "low" end)
	PER_STUN_SUBMENU:AddOption("Medium", function() stunstickVoltage = "medium" end)
	PER_STUN_SUBMENU:AddOption("High", function() stunstickVoltage = "high" end)
	PER_STUN_SUBMENU:AddOption("Max", function() stunstickVoltage = "max" end)

	PER_SUBMENU:AddOption("Explain Search", function() RunConsoleCommand("say", "Spread your legs, place your hands behind your back and no sudden movements.") end ):SetImage( "icon16/user_comment.png" )
	PER_SUBMENU:AddOption("Attempt to tie", function()
		if LocalPlayer():GetEyeTrace().Entity:IsPlayer() then
			local physDesc = "["..string.sub(LocalPlayer():GetEyeTrace().Entity:GetNetworkedString("physdesc"), 1, 15).."...".."]"
			RunConsoleCommand("say", "/me attempts to tie "..physDesc..".") 
		else
			chat.AddText(Color(200,100,100),"Combine Assistant: You ain't looking at a player!")
		end
	end ):SetImage( "icon16/user_comment.png" )

	
	MENU:AddSpacer()
	// Add a buddy
	MENU:AddOption("Add Buddy", function() 
		if LocalPlayer():GetEyeTrace().Entity:IsValid() then
			table.insert(buddies, LocalPlayer():GetEyeTrace().Entity)
		else
			chat.AddText(Color(200,100,100),"Combine Assistant: You ain't looking at a player!")
		end
	end ):SetImage( "icon16/user_add.png" )
	
	// Clear buddies
	MENU:AddOption("Clear Buddies", function() buddies = {} end ):SetImage( "icon16/user_delete.png" )
	
	// My buddies
	local BUD_SUBMENU, BUD_SUBMENU_PNL = MENU:AddSubMenu("My Buddies")
	BUD_SUBMENU_PNL:SetImage( "icon16/group.png" )
	
	local count = 0
	for k,v in pairs(buddies) do
		count = count + 1
		BUD_SUBMENU:AddOption(v:Name(), function() end)
	end
	if count == 0 then BUD_SUBMENU:AddOption("(None)", function() end) end
	
	// Open the menu
	
	MENU:Open( ScrW()/2-10, ScrH()/2-10 )
	//gui.SetMousePos(110, 110)
end

function hideCAssistantMenu()
	CloseDermaMenus()
end
concommand.Add("+CA_Menu", showCAssistantMenu)
concommand.Add("-CA_Menu", hideCAssistantMenu)

function toggleAssistant()
	if assistantEnabled then
		assistantEnabled = false
		timer.Destroy("stunstickCheck")
	else
		assistantEnabled = true
		timer.Create( "stunstickCheck", 1.0, 0, function()
			Perform()
		end)
	end
end

function printGroup()
	local myname = string.Explode(".", LocalPlayer():Name())
	output = myname[3]

	for k,v in pairs(buddies) do
		local budname = string.Explode(".", v:Name())
		output = output.." - "..budname[3]
	end
	
	patrolUnits = output
	return output
end

function Perform()
	// Raise stunstick
	if stunstickState != stunstickLastState then
		if (Clockwork.player:GetWeaponRaised(LocalPlayer()) == true) then
			RunConsoleCommand("say", "/me raises his stunstick and flicks it on "..stunstickVoltage.." voltage.");
			stunstickLastState = true
		else
			RunConsoleCommand("say", "/me turns off his stunstick and lowers it.");
			stunstickLastState = false
		end
	end
	
	// Un(holster) Stunstick.
	if currentActiveWep != lastActiveWep then
		if currentActiveWep == "Stunstick" and lastActiveWep != "Stunstick" then
			RunConsoleCommand("say", "/me unclips his stunstick from the belt and places it in his right hand.");
			lastActiveWep = "Stunstick"
		elseif lastActiveWep == "Stunstick" then
			RunConsoleCommand("say", "/me clips his stunstick it to the belt.");
			lastActiveWep = LocalPlayer():GetActiveWeapon():GetPrintName()
		end
	end
end

local lastStunPerformance = CurTime()
local lastPushPerformance = CurTime()
hook.Add( "KeyPress" ,"CheckPlayerStunstickHit", function(player, key)
	if assistantEnabled then
		if key == IN_ATTACK and currentActiveWep == "Stunstick" and CurTime() > lastStunPerformance and stunstickState then 
			RunConsoleCommand("say", "/me hits the citizen infront of him with his stunstick.")
			lastStunPerformance = CurTime()+5
		elseif key == IN_ATTACK2 and currentActiveWep == "Stunstick" and CurTime() > lastPushPerformance then 
			ent = LocalPlayer():GetEyeTrace().Entity
			if ent:IsValid() then
				if ent:GetClass() == "cw_paper" and !ent:IsPlayer() then
					RunConsoleCommand("say", "/me pushes the paper infront of him.")
				elseif ent:GetClass() == "cw_notepad" and !ent:IsPlayer() then
					RunConsoleCommand("say", "/me pushes the notepad infront of him.")
				elseif ent:IsPlayer() then
					if Schema:IsPlayerCombine(ent) then
						RunConsoleCommand("say", "/me pushes the unit infront of him.")
					elseif ent:GetFaction() == FACTION_CITIZEN or ent:GetFaction() == FACTION_CWU or ent:GetFaction() == FACTION_WI then
						RunConsoleCommand("say", "/me pushes the citizen infront of him.")
					else
						RunConsoleCommand("say", "/me pushes the person infront of him.")
					end
				elseif ent:GetClass() == "func_door_rotating" or ent:GetClass() == "prop_door_rotating" or "func_door" then
					RunConsoleCommand("say", "/me knocks on the door.")
				else
					RunConsoleCommand("say", "/me pushes the item infront of him.")
				end				
			end
			if ent:GetClass() == "func_door_rotating" or ent:GetClass() == "prop_door_rotating" or "func_door" then
				lastPushPerformance = CurTime()+8
			else
				lastPushPerformance = CurTime()+1
			end
		end
	end
end)

hook.Add("Tick", "CurrentActiveWep", function() 
	if assistantEnabled then
		if LocalPlayer():IsValid() and LocalPlayer():Alive() and !Schema:IsPlayerCombineRank( LocalPlayer(), {"SCN", "SYNTH"} ) and !LocalPlayer():GetSharedVar("FallenOver") and LocalPlayer():GetSharedVar("tied") == 0 and !(LocalPlayer():GetRagdollState() == RAGDOLL_KNOCKEDOUT or false) then
			if LocalPlayer():GetActiveWeapon() then
				currentActiveWep = LocalPlayer():GetActiveWeapon():GetPrintName()

				if (currentActiveWep == "Stunstick") then
					stunstickState = Clockwork.player:GetWeaponRaised(LocalPlayer());
				end
			end
		end
	end
end)

hook.Add("PlayerDisconnected", "RemoveFromTable", function(ply)

	for k,v in pairs(buddies) do
		if v == ply then
			table.remove(buddies, ply)
		end
	end

end)
