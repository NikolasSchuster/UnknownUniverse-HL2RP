--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Вода";
ITEM.uniqueID = "breens_water";
ITEM.model = "models/props_junk/popcan01a.mdl";
ITEM.thirst = 20;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.weight = 0.5;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Голубая алюминиевая баночка с водой сомнительного качества.";
ITEM.attributes = {
    ATB_STAMINA = 2,
    ATB_ACROBATICS = -2,
    ATB_ENDURANCE = -2,
    ATB_STRENGTH = -2
};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	Clockwork.player:SetDrunk(player, self.expireTime)

	player:SetHealth(math.Clamp(player:Health() + 2, 0, player:GetMaxHealth()))
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();