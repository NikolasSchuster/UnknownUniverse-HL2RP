--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Металлолом";
ITEM.uniqueID = "craft_scrap";
ITEM.model = "models/gibs/manhack_gib01.mdl";
ITEM.weight = 0.5;
ITEM.category = "Мусор";
ITEM.description = "Небольшой кусок чёрного металла.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();