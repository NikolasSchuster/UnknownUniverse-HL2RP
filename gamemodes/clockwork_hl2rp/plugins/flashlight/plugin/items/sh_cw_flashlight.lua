--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

ITEM.name = "Фонарик";
ITEM.model = "models/lagmite/lagmite.mdl";
ITEM.category = "Другое";
ITEM.weight = 0.8;
ITEM.uniqueID = "cw_flashlight";
ITEM.isFakeWeapon = true;
ITEM.isMeleeWeapon = true;
ITEM.description = "Обычный фонарик с кнопкой.";

ITEM:Register();