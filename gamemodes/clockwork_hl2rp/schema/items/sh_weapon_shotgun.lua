--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

ITEM.name = "Дробовик";
ITEM.model = "models/weapons/w_shotgun.mdl";
ITEM.weight = 4;
ITEM.uniqueID = "weapon_shotgun";
ITEM.description = "Оружие среднего размера с большой боевой мощью. Стреляет дробью.";
ITEM.isAttachment = true;
ITEM.hasFlashlight = true;
ITEM.loweredOrigin = Vector(3, 0, -4);
ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
ITEM.attachmentOffsetAngles = Angle(0, -10, 8)
ITEM.attachmentOffsetVector = Vector(-2, 3, 10)

ITEM:Register();