--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Минимальный рацион";
ITEM.uniqueID = "ration";
ITEM.model = "models/uu_branded/weapons/w_packati.mdl";
ITEM.weight = 2;
ITEM.useText = "Открыть";
ITEM.description = "Увесистая пачка, которая содержит минимальный рацион питания, который состоит из пищевых добавок для граждан.";

-- Called when a player attempts to pick up the item.
function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, {"У вас недостаточно места в инвентаре!"});
			
			return false;
		end;
	end;
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if (Schema:PlayerIsCombine(player)) then
		Clockwork.player:Notify(player, {"Вы не можете открыть этот рацион!"});
		
		return false;
	elseif (player:GetFaction() == FACTION_ADMIN) then
		Clockwork.player:Notify(player, {"Вы не можете открыть этот рацион!"});
		
		return false;
	else
		player:GiveItem(Clockwork.item:CreateInstance("citizen_supplements"), true);

        player:GiveItem(Clockwork.item:CreateInstance("breens_water"), true);
		
		Clockwork.plugin:Call("PlayerUseRation", player);
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();