--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Медицинский кейс";
ITEM.uniqueID = "craft_medchest";
ITEM.model = "models/pb_upd/other/fmk.mdl";
ITEM.weight = 2.5;
ITEM.description = "Жёсткий чемоданчик, удобно хранящий в себе медикаменты.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();