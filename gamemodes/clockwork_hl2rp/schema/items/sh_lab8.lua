--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Мерный стакан А";
ITEM.uniqueID = "lab8";
ITEM.model = "models/labware/beaker1.mdl";
ITEM.weight = 0.5;
ITEM.category = "Лаборатория";
ITEM.description = "Стеклянный мерный стакан.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();