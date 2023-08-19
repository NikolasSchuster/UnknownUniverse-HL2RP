--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Жетон Манхак Аркады";
ITEM.uniqueID = "manhack_coin";
ITEM.model = "models/uu_branded/bioshockinfinite/hext_coin.mdl";
ITEM.weight = 0.1;
ITEM.description = "Специальный жетон для игровых автоматов Манхак Аркады.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();