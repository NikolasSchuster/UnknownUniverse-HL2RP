--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Светлое пиво";
ITEM.uniqueID = "beer_white";
ITEM.thirst = 15;
ITEM.model = "models/props_junk/GlassBottle01a.mdl";
ITEM.weight = 0.6;
ITEM.expireTime = 300;
ITEM.description = "Бутылка вкусного белого пива. Напиток имеет приятный мягкий вкус.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();