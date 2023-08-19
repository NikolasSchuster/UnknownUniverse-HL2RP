--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Рейдер");
	CLASS.color = Color(200, 125, 100, 255);
	CLASS.factions = {FACTION_RAIDER};
	CLASS.isDefault = true;
	CLASS.description = "Обычный рейдер, живущий сам по себе.";
	CLASS.defaultPhysDesc = "Грязная жопа.";
CLASS_RAID = CLASS:Register();
