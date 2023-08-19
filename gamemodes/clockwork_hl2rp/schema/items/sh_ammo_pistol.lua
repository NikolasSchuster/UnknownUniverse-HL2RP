--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");

ITEM.name = "9x19 мм Парабеллум";
ITEM.model = "models/items/boxsrounds.mdl";
ITEM.weight = 1;
ITEM.uniqueID = "ammo_pistol";
ITEM.ammoClass = "pistol";
ITEM.ammoAmount = 20;
ITEM.description = "Небольшой контейнер с пистолетными патронами.";

ITEM:Register();