--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");

ITEM.name = "4.6x30 мм";
ITEM.model = "models/items/boxmrounds.mdl";
ITEM.weight = 1;
ITEM.uniqueID = "ammo_smg1";
ITEM.ammoClass = "smg1";
ITEM.ammoAmount = 45;
ITEM.description = "Контейнер с патронами для пистолета-пулемета.";

ITEM:Register();