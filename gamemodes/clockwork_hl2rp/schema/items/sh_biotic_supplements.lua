--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Пищевые добавки вортигонта";
ITEM.uniqueID = "biotic_supplements";
ITEM.hunger = 20;
ITEM.thirst = 10;
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.model = "models/uu_branded/mres/consumables/lag_mre.mdl";
ITEM.weight = 0.6;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Пакетик с едой для вортигонтов, внутри только отвратительная гречка, которая была разбавленна водой. На вкус полное дермище.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity) end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();