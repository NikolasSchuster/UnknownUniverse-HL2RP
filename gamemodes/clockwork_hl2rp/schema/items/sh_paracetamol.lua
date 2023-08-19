--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Парацетамол";
ITEM.uniqueID = "paracetamol";
ITEM.model = "models/pb_upd/medical/medjar.mdl";
ITEM.skin = 1;
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.2;
ITEM.useText = "Съесть";
ITEM.category = "Медикаменты";
ITEM.description = "Пластиковая баночка с парацетамолом внутри. Применяются при высокой температуре.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:TakeItem(self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();