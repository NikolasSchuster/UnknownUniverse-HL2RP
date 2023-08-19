--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");

ITEM.name = "Виски";
ITEM.uniqueID = "whiskey";
ITEM.thirst = 25;
ITEM.model = "models/props_junk/glassjug01.mdl";
ITEM.weight = 1.5;
ITEM.expireTime = 1800;
ITEM.description = "Стеклянная бутылка с очень вкусным виски. Имеет очень хороший аромат.";
ITEM.attributes = {ATB_STRENGTH = 4};

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();