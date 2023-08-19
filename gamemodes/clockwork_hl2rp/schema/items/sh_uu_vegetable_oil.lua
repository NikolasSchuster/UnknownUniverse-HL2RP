--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Растительное масло";
ITEM.uniqueID = "uu_vegetable_oil";
ITEM.model = "models/props_junk/garbage_plasticbottle002a.mdl";
ITEM.hunger = 20;
ITEM.thirst = 30;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.weight = 0.6;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Тонкая бутылка, внутри которой растительное масло. Противное на вкус.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:TakeItem(self);
    player:TakeDamage(20, player, player);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();