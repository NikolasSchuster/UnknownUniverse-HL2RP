--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Активированный уголь";
ITEM.uniqueID = "health_carbon";
ITEM.model = "models/pb_upd/medical/medjar.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.1;
ITEM.useText = "Съесть";
ITEM.category = "Медикаменты";
ITEM.description = "Пластиковая баночка с таблетками активированного угля внутри. Поможет при отравлении.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:TakeItem(self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();