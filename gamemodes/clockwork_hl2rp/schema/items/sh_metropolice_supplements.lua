--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Пищевой паёк ГО";
ITEM.uniqueID = "metropolice_supplements";
ITEM.hunger = 60;
ITEM.thirst = 15;
ITEM.model = "models/uu_branded/mres/consumables/zag_mre.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.6;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Сбалансированный пищевой паек, внутри которого два контейнера в саморазогревающихся пакетах. В первом суп со свининой, а во втором вкусные макароны с томатной пастой. Очень питательно и вкусно.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity) 
	player:SetHealth(math.Clamp(player:Health() + 10, 0, player:GetMaxHealth()))

	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120)
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();