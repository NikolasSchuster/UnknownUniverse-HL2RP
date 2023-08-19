--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

ITEM.name = "Магнум .357";
ITEM.model = "models/weapons/w_357.mdl";
ITEM.weight = 2;
ITEM.uniqueID = "weapon_357";
ITEM.description = "Красивый серебряный пистолет. Имеет большую огневую мощь.";
ITEM.isAttachment = true;
ITEM.isPrimaryWeapon = true;
ITEM.loweredOrigin = Vector(3, 0, -4);
ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
ITEM.attachmentOffsetAngles = Angle(-180, 180, 90);
ITEM.attachmentOffsetVector = Vector(-4.19, 0, -8.54);

ITEM:Register();