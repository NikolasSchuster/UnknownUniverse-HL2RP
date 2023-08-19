--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("clothes_base");

ITEM.name = "Черная броня Повстанцев";
ITEM.uniqueID = "uniform_black";
ITEM.model = "models/pb_upd/suit_cit/blackarmore.mdl";
ITEM.weight = 8;
ITEM.protection = 0.4;
ITEM.description = "Броня черного цвета с металлическими пластинами.";

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	return "models/tactical_rebel.mdl";
end;

ITEM:Register();