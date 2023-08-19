--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Антидот";
ITEM.uniqueID = "green_antidote";
ITEM.model = "models/pb_upd/medical/autoinjector.mdl";
ITEM.useSound = "items/medshot4.wav";
ITEM.skin = 1;
ITEM.weight = 0.2;
ITEM.useText = "Вколоть";
ITEM.category = "Медикаменты";
ITEM.description = 'Шприц с надписью "Антидот"';

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
    player:SetHealth(math.Clamp(player:Health() + Schema:GetHealAmount(player, 4), 0, player:GetMaxHealth()));
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();