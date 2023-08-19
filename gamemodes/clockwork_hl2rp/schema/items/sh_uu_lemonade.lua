--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Бутылка лимонада";
ITEM.uniqueID = "uu_lemonade";
ITEM.model = "models/props_junk/garbage_plasticbottle003a.mdl";
ITEM.thirst = 75;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.weight = 1.5;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Большая пластиковая бутылка, которая была наполненна вкусным лимонадом.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + 2, 0, player:GetMaxHealth()));
	
	player:BoostAttribute(self.name, ATB_ACROBATICS, 2, 120);
	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, -3, 120);

    player:GiveItem(Clockwork.item:CreateInstance("craft_empty_bottle"), true);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();