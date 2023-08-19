--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Газировка";
ITEM.uniqueID = "uu_large_soda";
ITEM.model = "models/props_junk/garbage_plasticbottle003a.mdl";
ITEM.thirst = 70;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.weight = 1.5;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Большая пластиковая бутылка, которая была наполненна вкусным пузырящимся напитком.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + 4, 0, player:GetMaxHealth()));
	
	player:BoostAttribute(self.name, ATB_ACROBATICS, -3, 120);
	player:BoostAttribute(self.name, ATB_ENDURANCE, -3, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, -3, 120);

    player:GiveItem(Clockwork.item:CreateInstance("craft_empty_bottle"), true);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();