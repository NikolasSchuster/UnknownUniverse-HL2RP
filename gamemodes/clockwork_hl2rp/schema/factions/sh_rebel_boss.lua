--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Глава повстанцев");

FACTION.useFullName = false;
FACTION.whitelist = true;
FACTION.maximumAttributePoints = 60;
FACTION.material = "cdev2_pb/factions/rebelboss";
FACTION.models = {
	female = {
		"models/Humans/Group03/Female_01.mdl",
        "models/Humans/Group03/Female_02.mdl",
        "models/Humans/Group03/Female_03.mdl",
        "models/Humans/Group03/Female_04.mdl",
        "models/Humans/Group03/Female_05.mdl",
        "models/Humans/Group03/Female_06.mdl",
		"models/Humans/Group03/Female_07.mdl"
	},
	male = {
		"models/Humans/Group03/Male_01.mdl",
		"models/Humans/Group03/Male_02.mdl",
        "models/Humans/Group03/Male_03.mdl",
        "models/Humans/Group03/Male_04.mdl",
        "models/Humans/Group03/Male_05.mdl",
        "models/Humans/Group03/Male_06.mdl",
        "models/Humans/Group03/Male_07.mdl",
        "models/Humans/Group03/Male_08.mdl",
		"models/Humans/Group03/male_09.mdl"
	};
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (Schema:PlayerIsCombine(player)) then
		if (name) then
			local models = self.models[ string.lower(player:QueryCharacter("gender")) ];
			
			if (models) then
				player:SetCharacterData("model", models[ math.random(#models) ], true);
				
				Clockwork.player:SetName(player, name, true);
			end;
		else
			return false, "Вы должны указать имя в качестве третьего аргумента!";
		end;
	end;
end;

FACTION_REBELBOSS = FACTION:Register();
