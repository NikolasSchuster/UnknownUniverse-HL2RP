--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");

ITEM.name = "Пистолет 9мм";
ITEM.model = "models/weapons/w_pistol.mdl";
ITEM.weight = 1;
ITEM.uniqueID = "weapon_pistol";
ITEM.description = "Небольшой пистолет, покрыт тускло-серой окраской.";
ITEM.isAttachment = true;
ITEM.isPrimaryWeapon = true;
ITEM.loweredOrigin = Vector(3, 0, -4);
ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
ITEM.attachmentOffsetVector = Vector(0, 4, -8);

ITEM:Register();