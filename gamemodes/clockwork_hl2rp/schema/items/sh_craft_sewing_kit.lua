--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Набор для шитья";
ITEM.uniqueID = "craft_sewing_kit";
ITEM.model = "models/pb_upd/other/sewkit.mdl";
ITEM.weight = 0.5;
ITEM.description = "Небольшая коробочка, которая содержит в себе нитки ножницы и иголки для вышивания.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();