--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("V");
COMMAND.tip = "Talk in vortigese.";
COMMAND.text = "<string Text>";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_DEATHCODE);
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local text = table.concat(arguments, " ");
	
	if (text == "") then
		Clockwork.player:Notify(player, "You did not specify enough text!");
		return;
	end;
	
	if player:GetFaction() != FACTION_VORT and player:GetFaction() != FACTION_CONSCRIPT_BIOTIC then	
		Clockwork.player:Notify(player, "You don't know Vortessence!");
		return;
	end
	
	Clockwork.chatBox:AddInRadius(player, "vort", text, player:GetPos(), Clockwork.config:Get("talk_radius"):Get());
end;

COMMAND:Register();