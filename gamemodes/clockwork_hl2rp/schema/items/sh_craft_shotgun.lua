--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Ржавый дробовик";
ITEM.uniqueID = "craft_shotgun";
ITEM.model = "models/weapons/w_shotgun.mdl";
ITEM.weight = 3;
ITEM.category = "Мусор";
ITEM.description = "Старое заклинившее оружие. Заржавело и забилось грязью.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();