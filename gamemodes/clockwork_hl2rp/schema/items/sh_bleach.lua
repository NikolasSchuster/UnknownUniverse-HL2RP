--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Отбеливатель";
ITEM.uniqueID = "bleach";
ITEM.thirst = 50;
ITEM.vomit = 100;
ITEM.model = "models/props_junk/garbage_plasticbottle001a.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.weight = 0.8;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Пластиковая бутылка с отбеливателем. В напитке очень много различного рода химикатов. При попадании внутрь немедленно обратиться к врачу!";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
    player:TakeItem(self);
    player:TakeDamage(40, player, player);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register(); 