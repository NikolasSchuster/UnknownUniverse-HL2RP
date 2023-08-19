--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Карманные часы";
ITEM.uniqueID = "watch";
ITEM.model = "models/pb_upd/other/watch.mdl";
ITEM.weight = 0.2;
ITEM.description = "Увесистые карманные часы, которые не дадут потерять вам ход времени. Покрыты золотом.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();