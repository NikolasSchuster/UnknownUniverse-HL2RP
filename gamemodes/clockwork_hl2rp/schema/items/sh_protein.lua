--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Протеин";
ITEM.uniqueID = "protein";
ITEM.model = "models/props_lab/jar01a.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.2;
ITEM.useText = "Съесть";
ITEM.category = "Медикаменты";
ITEM.description = "Баночка средних размеров, внутри которой белый порошок. Необходимо употреблять в правильных дозах.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetCharacterData("Stamina", 100);

	player:BoostAttribute(self.name, ATB_STRENGTH, 5, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();