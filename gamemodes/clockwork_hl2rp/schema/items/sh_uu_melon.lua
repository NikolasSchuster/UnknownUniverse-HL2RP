--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Арбуз";
ITEM.uniqueID = "uu_melon";
ITEM.model = "models/props_junk/watermelon01.mdl";
ITEM.weight = 3;
ITEM.category = "Продукты";
ITEM.description = "Спелый зелёный арбуз.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();