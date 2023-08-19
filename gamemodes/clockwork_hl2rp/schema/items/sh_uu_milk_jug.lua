--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Бутыль молока";
ITEM.uniqueID = "uu_milk_jug";
ITEM.model = "models/props_junk/garbage_milkcarton001a.mdl";
ITEM.hunger = 20;
ITEM.thirst = 50;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.weight = 0.8;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Большой бутыль, внутри которого искусственное молоко.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()));
	
	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();