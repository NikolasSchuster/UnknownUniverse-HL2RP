--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Стальной брус";
ITEM.uniqueID = "craft_bar";
ITEM.model = "models/gibs/metal_gib3.mdl";
ITEM.weight = 1;
ITEM.category = "Мусор";
ITEM.description = "Средний по размеру стальной брус.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();