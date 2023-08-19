--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Пустой медицинский кейс";
ITEM.uniqueID = "craft_empty_medchest";
ITEM.model = "models/pb_upd/other/fmk_empty.mdl";
ITEM.weight = 0.3;
ITEM.description = "Пустой жёсткий чемоданчик, внутри которого раньше были медикаменты.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();