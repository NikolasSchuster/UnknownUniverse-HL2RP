--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Чай в пакетиках";
ITEM.uniqueID = "uu_tea";
ITEM.model = "models/uu_branded/probs_misc/tobdcco_box-1.mdl";
ITEM.weight = 0.5;
ITEM.category = "Продукты";
ITEM.description = "Картонная коробочка, внутри которой пакетики с чёрным чаем.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();