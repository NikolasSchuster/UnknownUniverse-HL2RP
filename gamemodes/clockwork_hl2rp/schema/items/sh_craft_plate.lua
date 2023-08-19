--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Стальная пластина";
ITEM.uniqueID = "craft_plate";
ITEM.model = "models/gibs/scanner_gib02.mdl";
ITEM.weight = 1;
ITEM.category = "Мусор";
ITEM.description = "Небольшой кусочек металличесткой пластины.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();