--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Антидепрессанты";
ITEM.uniqueID = "antidepressants";
ITEM.model = "models/pb_upd/medical/medjar.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.skin = 2;
ITEM.weight = 0.2;
ITEM.useText = "Съесть";
ITEM.category = "Медикаменты";
ITEM.description = "Пластиковая баночка белого цвета, внутри который таблетки, которые помогут вам расслабиться.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetSharedVar("Antidepressants", CurTime() + 1800);
	
	player:BoostAttribute(self.name, ATB_ENDURANCE, 10, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, -2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();