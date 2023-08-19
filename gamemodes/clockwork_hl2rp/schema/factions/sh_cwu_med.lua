--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Медик ГСР");

FACTION.useFullName = false;
FACTION.whitelist = true;
FACTION.maximumAttributePoints = 40;
FACTION.material = "cdev2_pb/factions/cwumedic";
FACTION.models = {
	female = {
		"models/betacz/group03m/female_01.mdl",
        "models/betacz/group03m/female_02.mdl",
		"models/betacz/group03m/female_03.mdl",
		"models/betacz/group03m/female_04.mdl",
		"models/betacz/group03m/female_05.mdl",
		"models/betacz/group03m/female_06.mdl",
		"models/betacz/group03m/female_07.mdl"
	},
	male = {
		"models/betacz/group03m/male_01.mdl",
		"models/betacz/group03m/male_02.mdl",
		"models/betacz/group03m/male_03.mdl",
		"models/betacz/group03m/male_04.mdl",
		"models/betacz/group03m/male_05.mdl",
		"models/betacz/group03m/male_06.mdl",
		"models/betacz/group03m/male_07.mdl",
		"models/betacz/group03m/male_08.mdl",
		"models/betacz/group03m/male_09.mdl"
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

FACTION_CWUMED = FACTION:Register();
