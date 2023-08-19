--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Баночка с кофе";
ITEM.uniqueID = "uu_coffee";
ITEM.model = "models/uu_branded/bioshockinfinite/xoffee_mug_closed.mdl";
ITEM.weight = 0.5;
ITEM.category = "Продукты";
ITEM.description = "Банка с очень вкусным, и бодрящим кофем.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();