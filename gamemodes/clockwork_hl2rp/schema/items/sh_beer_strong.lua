--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Крепкое пиво";
ITEM.uniqueID = "beer_strong";
ITEM.thirst = 15;
ITEM.model = "models/props_junk/GlassBottle01a.mdl";
ITEM.skin = 1;
ITEM.weight = 0.6;
ITEM.expireTime = 1800;
ITEM.description = "Бутылка с крепким пивом. Очень крепким.";
ITEM.attributes = {ATB_STRENGTH = 4};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
    player:BoostAttribute(self.name, ATB_STRENGTH, 4, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();