--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Рацион лоялистов";
ITEM.uniqueID = "ration_high";
ITEM.model = "models/uu_branded/weapons/w_packatl.mdl";
ITEM.weight = 2;
ITEM.useText = "Открыть";
ITEM.description = "Увесистая пачка, который состоит из полноценных блюд, который дополнительно содержит жетоны и фрукт.";

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
        Clockwork.player:GiveCash(player, 60, {"Рацион"});

		player:GiveItem(Clockwork.item:CreateInstance("loyalists_supplements"), true);

        player:GiveItem(Clockwork.item:CreateInstance("uu_apple"), true);

        player:GiveItem(Clockwork.item:CreateInstance("water_special"), true);
		
		Clockwork.plugin:Call("PlayerUseRation", player);
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();