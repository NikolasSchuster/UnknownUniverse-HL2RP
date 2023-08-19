--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).

	Clockwork was created by Conna Wiles (also known as kurozael.)
	http://cloudsixteen.com/license/clockwork.html
--]]

local ATTRIBUTE = Clockwork.attribute:New();

ATTRIBUTE.name = "Выносливость";
ATTRIBUTE.maximum = 100;
ATTRIBUTE.uniqueID = "stam";
ATTRIBUTE.description = "Влияет на продолжительность бега.";
ATTRIBUTE.isOnCharScreen = true;

ATB_STAMINA = Clockwork.attribute:Register(ATTRIBUTE);