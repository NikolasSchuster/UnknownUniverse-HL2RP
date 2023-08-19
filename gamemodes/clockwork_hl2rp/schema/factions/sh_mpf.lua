--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Гражданская Оборона");

FACTION.isCombineFaction = true;
FACTION.whitelist = true;
FACTION.maximumAttributePoints = 45;
FACTION.material = "cdev2_pb/factions/mpf";
FACTION.startChatNoise = "npc/overwatch/radiovoice/on1.wav";
FACTION.endChatNoise = "npc/overwatch/radiovoice/off4.wav";
FACTION.models = {
	female = {"models/police.mdl"},
	male = {"models/police.mdl"}
};
FACTION.weapons = {
	"cw_stunstick"
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

-- Called when a player's name should be assigned for the faction.
function FACTION:GetName(player, character)
	return "C17.MPF.GU.RCT:"..Clockwork.kernel:ZeroNumberToDigits(math.random(1, 999), 3);
end;

-- Called when a player's model should be assigned for the faction.
function FACTION:GetModel(player, character)
	if (character.gender == GENDER_MALE) then
		return self.models.male[1];
	else
		return self.models.female[1];
	end;
end;

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (faction.name == FACTION_OTA or faction.name == FACTION_SCANNER) then
		if (name) then
			Clockwork.player:SetName(player, string.gsub(player:QueryCharacter("name"), ".+(%d%d%d%d%d)", "MPF.%1"), true);
		else
			return false, "You need to specify a name as the third argument!";
		end;
	else
		Clockwork.player:SetName(player, self:GetName(player, player:GetCharacter()));
	end;
	
	if (player:QueryCharacter("gender") == GENDER_MALE) then
		player:SetCharacterData("model", self.models.male[1], true);
	else
		player:SetCharacterData("model", self.models.female[1], true);
	end;
end;

FACTION_MPF = FACTION:Register();
