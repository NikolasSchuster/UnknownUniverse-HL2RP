--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Энергетик";
ITEM.uniqueID = "water_special";
ITEM.model = "models/props_junk/popcan01a.mdl";
ITEM.skin = 2;
ITEM.sleep = 20;
ITEM.thirst = 40;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.weight = 0.5;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Жёлтая алюминиевая баночка. Внутри вкусный энергетик, содержит кофеин.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetCharacterData("Stamina", 100);
	player:SetHealth(math.Clamp(player:Health() + 4, 0, player:GetMaxHealth()));

	player:BoostAttribute(self.name, ATB_ACROBATICS, -3, 120);
	player:BoostAttribute(self.name, ATB_ENDURANCE, -3, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, -3, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();