--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Бинт";
ITEM.uniqueID = "bandage";
ITEM.model = "models/pb_upd/medical/bandage.mdl";
ITEM.weight = 0.5;
ITEM.useText = "Применить";
ITEM.category = "Медикаменты"
ITEM.description = "Нестерильный бинт, нужен, чтобы перевязывать мелкие раны. Пользуйтесь с умом.";
ITEM.customFunctions = {"Вылечить другого"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + Schema:GetHealAmount(player), 0, player:GetMaxHealth()));
	
	Clockwork.plugin:Call("PlayerHealed", player, player, self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Вылечить другого") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "bandage");
		end;
	end;
end;

ITEM:Register();