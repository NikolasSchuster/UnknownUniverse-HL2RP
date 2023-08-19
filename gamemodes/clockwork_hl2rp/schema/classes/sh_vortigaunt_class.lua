--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Вортигонт");
	CLASS.color = Color(255, 200, 100, 255);
	CLASS.factions = {FACTION_VORTIGAUNT};
	CLASS.isDefault = true;
	CLASS.description = "An alien race not from this planet.";
	CLASS.defaultPhysDesc = "A green looking thing with many eyes.";
CLASS_VORT = CLASS:Register();
