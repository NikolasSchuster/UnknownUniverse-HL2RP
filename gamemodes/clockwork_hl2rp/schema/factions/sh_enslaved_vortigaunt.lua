--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Раб вортигонт");

FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "cdev2_pb/factions/vortslave";
FACTION.models = {
	female = {"models/vortigaunt_slave.mdl"},
	male = {"models/vortigaunt_slave.mdl"}
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (Schema:PlayerIsCombine(player)) then
		if (name) then
			local models = self.models[ string.lower(player:QueryCharacter("gender")) ];
			
			if (models) then
				player:SetCharacterData("model", models[ math.random(#models) ], true);
				
				Clockwork.player:SetName(player, name, true);
			end;
		else
			return false, "Вы должны указать имя в качестве третьего аргумента!";
		end;
	end;
end;

FACTION_ENSLAVEDVORTIGAUNT = FACTION:Register();
