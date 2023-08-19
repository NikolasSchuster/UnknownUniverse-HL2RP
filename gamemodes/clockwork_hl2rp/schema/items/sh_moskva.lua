--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Коктейль Москва";
ITEM.uniqueID = "moskva";
ITEM.thirst = 10;
ITEM.model = "models/teebeutel/metro/objects/bottle02.mdl";
ITEM.weight = 0.3;
ITEM.expireTime = 1800;
ITEM.description = "Зелёная стеклянная бутылка из непрозрачного стекла с жидкостью, который имеет необычный аромат.";
ITEM.attributes = {
    ATB_STAMINA = 2,
    ATB_ACROBATICS = 2,
    ATB_ENDURANCE = 2,
    ATB_STRENGTH = 2
};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	Clockwork.player:SetDrunk(player, self.expireTime)
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();