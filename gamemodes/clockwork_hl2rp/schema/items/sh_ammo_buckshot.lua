--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");

ITEM.name = "12x70 мм";
ITEM.model = "models/items/boxbuckshot.mdl";
ITEM.weight = 1;
ITEM.uniqueID = "ammo_buckshot";
ITEM.ammoClass = "buckshot";
ITEM.ammoAmount = 16;
ITEM.description = "Красная коробка с ружейными патронами.";

ITEM:Register();