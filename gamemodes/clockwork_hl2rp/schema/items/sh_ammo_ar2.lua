--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");

ITEM.name = "Импульсный заряд";
ITEM.model = "models/items/combine_rifle_cartridge01.mdl";
ITEM.weight = 1;
ITEM.uniqueID = "ammo_ar2";
ITEM.ammoClass = "ar2";
ITEM.ammoAmount = 30;
ITEM.description = "Картридж Альянса для Импульсной винтовки.";

ITEM:Register();