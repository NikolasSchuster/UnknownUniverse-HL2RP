--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("clothes_base");

ITEM.name = "Костюм химзащиты";
ITEM.uniqueID = "uniform_factory";
ITEM.model = "models/pb_upd/suit_cit/chim.mdl";
ITEM.weight = 6;
ITEM.protection = 0.3;
ITEM.description = "Защитный комбинезон для работы в опасных условиях.";

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	return "models/citizen_17.mdl";
end;

ITEM:Register();