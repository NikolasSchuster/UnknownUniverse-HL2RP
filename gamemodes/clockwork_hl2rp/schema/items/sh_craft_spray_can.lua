--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Баллончик с краской";
ITEM.uniqueID = "craft_spray_can";
ITEM.model = "models/cdev2_pb/hl2_spraycan.mdl";
ITEM.weight = 1;
ITEM.description = "Небольшой баллончик, который наполнен краской. Предназначен для рисования граффити и пропаганды.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();