--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Медик повстанцев");

FACTION.useFullName = false;
FACTION.whitelist = true;
FACTION.maximumAttributePoints = 40;
FACTION.material = "cdev2_pb/factions/rebel";
FACTION.models = {
	female = {
		"models/Humans/Group03m/Female_01.mdl",
        "models/Humans/Group03m/Female_02.mdl",
        "models/Humans/Group03m/Female_03.mdl",
        "models/Humans/Group03m/Female_04.mdl",
        "models/Humans/Group03m/Female_05.mdl",
        "models/Humans/Group03m/Female_06.mdl",
		"models/Humans/Group03m/Female_07.mdl"
	},
	male = {
		"models/Humans/Group03m/Male_01.mdl",
		"models/Humans/Group03m/Male_02.mdl",
        "models/Humans/Group03m/Male_03.mdl",
        "models/Humans/Group03m/Male_04.mdl",
        "models/Humans/Group03m/Male_05.mdl",
        "models/Humans/Group03m/Male_06.mdl",
        "models/Humans/Group03m/Male_07.mdl",
        "models/Humans/Group03m/Male_08.mdl",
		"models/Humans/Group03m/male_09.mdl"
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

FACTION_REBELMED = FACTION:Register();
