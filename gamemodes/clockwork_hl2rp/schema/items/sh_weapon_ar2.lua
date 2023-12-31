--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

ITEM.name = "Импульсная винтовка";
ITEM.model = "models/weapons/w_irifle.mdl";
ITEM.weight = 4;
ITEM.classes = {CLASS_INCOGNITO, CLASS_MPR, CLASS_MPU, CLASS_EMP, CLASS_OWS, CLASS_SOW, CLASS_EOW};
ITEM.uniqueID = "weapon_ar2";
ITEM.description = "Мощное оружие инопланетного происхождения. Стоит на вооружении армии Альянса.";
ITEM.isAttachment = true;
ITEM.hasFlashlight = true;
ITEM.loweredOrigin = Vector(3, 0, -4);
ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);

ITEM:Register();