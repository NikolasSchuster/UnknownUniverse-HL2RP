--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Заводской рацион";
ITEM.uniqueID = "ration_factory";
ITEM.model = "models/uu_branded/weapons/w_packate.mdl";
ITEM.weight = 2;
ITEM.category = "Мусор";
ITEM.description = "Заготовка для рациона, которая без надписей. Упаковка из очень прочного пластика, её не открыть.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();