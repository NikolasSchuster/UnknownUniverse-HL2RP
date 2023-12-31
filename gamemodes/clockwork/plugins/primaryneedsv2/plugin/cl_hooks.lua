local PLUGIN = PLUGIN;

-- Called when the local player's motion blurs should be adjusted.
function PLUGIN:PlayerAdjustMotionBlurs(motionBlurs)
	if ( Clockwork.Client:HasInitialized() ) then
		local hunger = Clockwork.Client:GetSharedVar("hunger");
		local data = math.max(hunger);
		
		if (data >= 90) then
			motionBlurs.blurTable["needs"] = 1 - ( (0.25 / 10) * ( 10 - (100 - data) ) );
		end;
	end;
end;

-- Called when the F1 Text is needed.
function PLUGIN:GetBars(bars)
	local hunger = tonumber(Clockwork.Client:GetSharedVar("hunger"));
	local thirst = tonumber(Clockwork.Client:GetSharedVar("thirst"));
	local sleep = tonumber(Clockwork.Client:GetSharedVar("sleep"));
	
	if (!self.hunger) then
		self.hunger = hunger;
	else
		self.hunger = math.Approach(self.hunger, hunger, 1);
	end;
	
	if (!self.thirst) then
		self.thirst = thirst;
	else
		self.thirst = math.Approach(self.thirst, thirst, 1);
	end;
	
	if (!self.sleep) then
		self.sleep = sleep;
	else
		self.sleep = math.Approach(self.sleep, sleep, 1);
	end;

	if (hunger != -1) then
		Clockwork.bars:Add("HUNGER", Color(150, 200, 150, 255), "Голод", self.hunger, 100, self.hunger <= 30);
	end;
	if (thirst != -1) then
		Clockwork.bars:Add("THIRST", Color(100, 150, 200, 255), "Жажда", self.thirst, 100, self.thirst <= 30);
	end;
	if (sleep != -1) then
		Clockwork.bars:Add("SLEEP", Color(200, 150, 100, 255), "Утомление", self.sleep, 100, self.sleep <= 30);
	end;
end;
	
	-- local hungerText = "Unknown";
	-- local thirstText = "Unknown";
	-- local sleepText = "Unknown";

	-- Called when the F1 Text is needed.
-- function PLUGIN:GetPlayerInfoText(playerInfoText)
-- 	--local hunger = tonumber(Clockwork.Client:GetSharedVar("hunger"));
-- 	--local thirst = tonumber(Clockwork.Client:GetSharedVar("thirst"));
-- 	--local sleep = tonumber(Clockwork.Client:GetSharedVar("sleep"));
	
-- 	--local text = "Unknown";
-- 	--local thirstText = "Unknown";
-- 	--local sleepText = "Unknown";
	
	-- if ( hunger <= 30 ) then
	-- 	hungerText = "Well Fed";
	-- elseif( hunger <= 50 ) then
	-- 	hungerText = "Peckish";
	-- elseif( hunger <= 70 ) then
	-- 	hungerText = "Hungry";
	-- elseif( hunger <= 80 ) then
	-- 	hungerText = "Very Hungry";
	-- elseif( hunger <= 100 ) then
	-- 	hungerText = "Starving";
	-- end;
	
	-- if ( thirst <= 30 ) then
	-- 	thirstText = "Hydrated";
	-- elseif( thirst <= 50 ) then
	-- 	thirstText = "Kinda Thirsty";
	-- elseif( thirst <= 70 ) then
	-- 	thirstText = "Thirsty";
	-- elseif( thirst <= 80 ) then
	-- 	thirstText = "Very Thirsty";
	-- elseif( thirst <= 100 ) then
	-- 	thirstText = "Dehydrated";
	-- end;
	
	-- if ( sleep <= 30 ) then
	-- 	sleepText = "Energized";
	-- elseif( sleep <= 50 ) then
	-- 	sleepText = "Tired";
	-- elseif( sleep <= 70 ) then
	-- 	sleepText = "Sleepy";
	-- elseif( sleep <= 80 ) then
	-- 	sleepText = "Very Sleepy";
	-- elseif( sleep <= 100 ) then
	-- 	sleepText = "Sleep Deprived";
	-- end;
	
	-- if (hunger > -1 or thirst > -1 or sleep > -1) then
	-- 	playerInfoText:Add("Header", "[Primary Needs]");
	-- end;
	-- if (hunger > -1) then
	-- 	playerInfoText:Add("HUNGER", "Hunger Level: "..hungerText);
	-- end;
	-- if (thirst > -1) then
	-- 	playerInfoText:Add("THIRST", "Thirst Level: "..thirstText);
	-- end;
	-- if (sleep > -1) then
	-- 	playerInfoText:Add("SLEEP", "Sleep Level: "..sleepText);
	-- end;
	-- if (hunger > -1 or thirst > -1 or sleep > -1) then
	-- 	playerInfoText:Add("Header2", " ");
	-- end;
	-- if (hunger > -1 and thirst > -1 and sleep > -1) then
	-- 	playerInfoText:Add("Header3", "[Other]");
	-- end;
-- end;