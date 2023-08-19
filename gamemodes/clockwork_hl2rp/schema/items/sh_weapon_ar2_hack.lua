--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

ITEM.name = "Импульсная винтовка L";
ITEM.model = "models/weapons/w_irifle.mdl";
ITEM.weaponClass = "weapon_ar2";
ITEM.weight = 4;
ITEM.classes = {CLASS_INCOGNITO, CLASS_ADMINISTRATOR, CLASS_CIT, CLASS_CWUDIRECTOR, CLASS_CWUMEDIC, CLASS_CWUDEF, CLASS_GOODEF, CLASS_RAID, CLASS_REBBOSS, CLASS_REBMED, CLASS_REB, CLASS_REF, CLASS_SYND};
ITEM.uniqueID = "weapon_ar2_hack";
ITEM.description = "Мощное оружие инопланетного происхождения. Био блокировка взломана.";
ITEM.isAttachment = true;
ITEM.hasFlashlight = true;
ITEM.loweredOrigin = Vector(3, 0, -4);
ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);

ITEM:Register();