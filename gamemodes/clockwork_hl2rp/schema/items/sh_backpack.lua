--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Рюкзак";
ITEM.uniqueID = "backpack";
ITEM.model = "models/props_junk/garbage_bag001a.mdl";
ITEM.weight = 3;
ITEM.category = "Сумки";
ITEM.isRareItem = true;
ITEM.description = "Потрёпанный, но вместительный рюкзак.";
ITEM.addInvSpace = 20;

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
		Clockwork.player:Notify(player, {"Вы не можете выбросить рюкзак, пока носите в нем вещи!"});
		
		return false;
	end;
end;

ITEM:Register();