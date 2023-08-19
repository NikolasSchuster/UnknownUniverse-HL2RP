--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Пищевой паёк";
ITEM.uniqueID = "loyalists_supplements";
ITEM.hunger = 60;
ITEM.thirst = 15;
ITEM.model = "models/uu_branded/mres/consumables/pag_mre.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.6;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Полноценный пищевой паек, внутри которого два контейнера в саморазогревающихся пакетах. В первом вкусный суп с курицей, а во втором ароматная пюрешка с курицей.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity) 
    player:SetHealth(math.Clamp(player:Health() + 6, 0, player:GetMaxHealth()))
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();