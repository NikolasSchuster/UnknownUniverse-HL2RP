--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Пиво";
ITEM.uniqueID = "beer";
ITEM.thirst = 20;
ITEM.model = "models/props_junk/garbage_glassbottle003a.mdl";
ITEM.weight = 1;
ITEM.expireTime = 900;
ITEM.description = "Стеклянная бутылка, заполненная странной пенной жидкостью.";
ITEM.attributes = {ATB_STRENGTH = 2};

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();