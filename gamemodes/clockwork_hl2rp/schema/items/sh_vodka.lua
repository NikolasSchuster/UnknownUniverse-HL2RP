--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Бутылёк Водки";
ITEM.uniqueID = "vodka";
ITEM.thirst = 10;
ITEM.model = "models/teebeutel/metro/objects/bottle03.mdl";
ITEM.weight = 0.3;
ITEM.expireTime = 1800;
ITEM.description = "Стеклянный бутылёк из непрозрачного стекла, внутри очень ядрёный спиртосодержащий напиток.";
ITEM.attributes = {ATB_STRENGTH = -4};

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();