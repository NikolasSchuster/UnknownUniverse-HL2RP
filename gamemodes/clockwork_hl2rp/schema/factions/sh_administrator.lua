--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Городской администратор");

FACTION.useFullName = false;
FACTION.whitelist = true;
FACTION.maximumAttributePoints = 60;
FACTION.material = "cdev2_pb/factions/admin";
FACTION.models = {
	female = {
		"models/humans/group17/female_01.mdl",
		"models/humans/group17/female_02.mdl",
		"models/humans/group17/female_03.mdl",
		"models/humans/group17/female_04.mdl",
		"models/humans/group17/female_06.mdl",
		"models/humans/group17/female_07.mdl"
	},
	male = {
		"models/humans/group17/male_01.mdl",
		"models/humans/group17/male_02.mdl",
		"models/humans/group17/male_03.mdl",
		"models/humans/group17/male_04.mdl",
		"models/humans/group17/male_05.mdl",
		"models/humans/group17/male_06.mdl",
		"models/humans/group17/male_07.mdl",
		"models/humans/group17/male_08.mdl",
		"models/humans/group17/male_09.mdl"
	};
};
FACTION.startingInv = {
	["handheld_radio"] = 1
};
FACTION.entRelationship = {
	["npc_combine_s"] = "Like",
	["npc_helicopter"] = "Like",
	["npc_metropolice"] = "Like",
	["npc_manhack"] = "Like",
	["npc_combinedropship"] = "Like",
	["npc_rollermine"] = "Like",
	["npc_stalker"] = "Like",
	["npc_turret_floor"] = "Like",
	["npc_combinegunship"] = "Like",
	["npc_cscanner"] = "Like",
	["npc_clawscanner"] = "Like",
	["npc_strider"] = "Like",
	["npc_turret_ceiling"] = "Like",
	["npc_turret_ground"] = "Like",
	["npc_combine_camera"] = "Like"
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

FACTION_ADMIN = FACTION:Register();
