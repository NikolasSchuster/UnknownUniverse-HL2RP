--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Джин";
ITEM.uniqueID = "uu_gin";
ITEM.thirst = 20;
ITEM.model = "models/uu_branded/bioshockinfinite/jin_bottle.mdl";
ITEM.weight = 1.5;
ITEM.expireTime = 1800;
ITEM.description = "Непрозрачная стеклянная бутылка, которая была заполненна странной жидкостью.";
ITEM.attributes = {ATB_STRENGTH = 4};

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();