--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Рация";
ITEM.uniqueID = "handheld_radio";
ITEM.model = "models/cdev2_pb/handheld_radio.mdl";
ITEM.weight = 0.4;
ITEM.description = "Переносная рация с функцией настройки радиочастоты.";
ITEM.customFunctions = {"Установить частоту"};

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Установить частоту") then
			Clockwork.datastream:Start(player, "Frequency", player:GetCharacterData("Frequency", ""));
		end;
	end;
end;

ITEM:Register();