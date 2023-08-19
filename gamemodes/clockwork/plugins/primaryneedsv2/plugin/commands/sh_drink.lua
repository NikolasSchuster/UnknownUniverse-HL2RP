local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Drink");
COMMAND.tip = "Попить воду (если вы стоите в воде). Может спасти вам жизнь.";
COMMAND.text = "<none>";
COMMAND.flags = CMD_DEFAULT;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if (player:WaterLevel() >= 1) then
		player:SetCharacterData("thirst", math.Clamp(player:GetCharacterData("thirst") - 25, 0, 100))
		player:SetCharacterData("vomit", math.Clamp(player:GetCharacterData("vomit") +30, 0, 100))
		player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
	else
		Clockwork.player:Notify(player, "Вы должны стоять в воде!");
	end;
end;

COMMAND:Register();