--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Бутылёк спирта";
ITEM.uniqueID = "alcohol";
ITEM.thirst = 10;
ITEM.model = "models/labware/bottle1.mdl";
ITEM.weight = 0.3;
ITEM.expireTime = 1800;
ITEM.category = "Медикаменты";
ITEM.description = "Бутылёк с малым количеством спирта, употребление внутрь закончиться плохо.";
ITEM.attributes = {ATB_STRENGTH = -4};

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();