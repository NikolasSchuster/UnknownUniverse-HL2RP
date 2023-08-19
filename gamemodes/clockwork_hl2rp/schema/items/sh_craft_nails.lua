--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Коробочка с гвоздями";
ITEM.uniqueID = "craft_nails";
ITEM.model = "models/pb_upd/other/nails.mdl";
ITEM.weight = 1;
ITEM.description = "Небольшая картонная коробочка чёрного цвета. Содержит гвозди, болты, гайки.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();