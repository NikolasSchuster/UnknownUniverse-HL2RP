--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Тёмное пиво";
ITEM.uniqueID = "beer_black";
ITEM.thirst = 25;
ITEM.model = "models/props_junk/garbage_glassbottle001a.mdl";
ITEM.weight = 1.5;
ITEM.expireTime = 900;
ITEM.description = "Полторашка темного нефильтрованного пива.";
ITEM.attributes = {ATB_STRENGTH = 4};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
    player:BoostAttribute(self.name, ATB_STRENGTH, 4, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();