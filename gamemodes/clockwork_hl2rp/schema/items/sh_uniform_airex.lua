--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("clothes_base");

ITEM.name = "Броня AirEx";
ITEM.uniqueID = "uniform_airex";
ITEM.model = "models/pb_upd/suit_cit/blackarmore.mdl";
ITEM.weight = 8;
ITEM.protection = 0.6;
ITEM.description = "Броня черного цвета. Сверху надето пальто AirEx с логотипом C18.";

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	return "models/humans/airex/airex_male.mdl";
end;

ITEM:Register();