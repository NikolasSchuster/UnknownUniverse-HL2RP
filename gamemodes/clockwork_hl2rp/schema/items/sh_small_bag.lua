--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Сумка";
ITEM.uniqueID = "small_bag";
ITEM.model = "models/props_c17/briefcase001a.mdl";
ITEM.weight = 2;
ITEM.category = "Сумки";
ITEM.isRareItem = false;
ITEM.description = "Сумка средней вместимости, у которой есть удобный ремешок.";
ITEM.addInvSpace = 13;

-- Called when a player attempts to take the item from storage.
function ITEM:CanTakeStorage(player, storageTable)
	local target = Clockwork.entity:GetPlayer(storageTable.entity);
	
	if (target) then
		local inventoryWeight = Clockwork.inventory:CalculateWeight(
			target:GetInventory()
		);

		if (inventoryWeight > (target:GetMaxWeight() - self("addInvSpace"))) then
			return false;
		end;
	end;
	
	if (player:HasItemByID(self.uniqueID) and table.Count(player:GetItemsByID(self.uniqueID)) >= 1) then
		return false;
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
	if (player:GetInventoryWeight() > (player:GetMaxWeight() - self("addInvSpace"))) then
		Clockwork.player:Notify(player, {"Вы не можете выбросить сумку, пока носите в ней вещи!"});
		
		return false;
	end;
end;

ITEM:Register();