--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Обрывок ткани";
ITEM.uniqueID = "craft_scrap_cloth";
ITEM.model = "models/pb_upd/other/rags.mdl";
ITEM.weight = 0.2;
ITEM.category = "Мусор";
ITEM.description = "Небольшой грубо отрезанный кусок ткани.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();