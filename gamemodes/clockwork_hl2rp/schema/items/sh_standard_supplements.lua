--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Пищевые добавки высшего сорта";
ITEM.uniqueID = "standard_supplements";
ITEM.hunger = 40;
ITEM.thirst = 10;
ITEM.model = "models/uu_branded/mres/consumables/tag_mre.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.6;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Небольшой коробок с пластиковым контейнером, внутри которого пышная каша. На вкус как курица.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity) 
	player:SetHealth(math.Clamp(player:Health() + 3, 0, player:GetMaxHealth()))
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();