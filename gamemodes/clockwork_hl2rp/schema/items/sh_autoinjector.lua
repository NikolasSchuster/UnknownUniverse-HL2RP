--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Автоинъектор без маркировки";
ITEM.uniqueID = "autoinjector";
ITEM.model = "models/pb_upd/medical/autoinjector.mdl";
ITEM.useSound = "items/medshot4.wav";
ITEM.skin = 3;
ITEM.weight = 0.2;
ITEM.useText = "Вколоть";
ITEM.category = "Медикаменты";
ITEM.description = "Автоинъектор без маркировок, явно был перезаправлен. Неизвестно, что находиться внутри, так и неизвестен эффект воздействия.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	local effect = math.random(1, 7)
	if effect == 1 then
		Clockwork.player:SetDrunk(player, 300)
		player:BoostAttribute(self.name, ATB_ENDURANCE, 5, 300)
		player:BoostAttribute(self.name, ATB_ACROBATICS, -3, 300)
		player:BoostAttribute(self.name, ATB_STRENGTH, -3, 300);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, что-то произошло.")
	elseif effect == 2 then
		player:SetHealth( math.Clamp( player:Health() + Schema:GetHealAmount(player), 0, player:GetMaxHealth() ) )
		Clockwork.plugin:Call("PlayerHealed", player, player, self)
		player:BoostAttribute(self.name, ATB_STRENGTH, 10, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, ваше самочувствие улучшилось.")
	elseif effect == 3 then
		player:SetNetVar("antidepressants", CurTime() + 240)
		player:BoostAttribute(self.name, ATB_ENDURANCE, 10, 120)
		player:BoostAttribute(self.name, ATB_STAMINA, -20, 240)
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, что-то произошло.")
	elseif effect == 4 then
		player:BoostAttribute(self.name, ATB_STAMINA, -15, 240)
		player:BoostAttribute(self.name, ATB_ACROBATICS, -15, 240)
		player:BoostAttribute(self.name, ATB_ENDURANCE, -20, 240)
		player:BoostAttribute(self.name, ATB_STRENGTH, -10, 240)
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Ноги стали ватными, вам тяжело двигаться.")
	elseif effect == 5 then
		player:BoostAttribute(self.name, ATB_STRENGTH, 10, 240);
		player:BoostAttribute(self.name, ATB_STAMINA, 20, 240);
		player:BoostAttribute(self.name, ATB_ENDURANCE, 60, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Заряд бодрости пробежался по вашим жилам.")
	elseif effect == 6 then
		player:SetCharacterData("Stamina", 100);
		player:BoostAttribute(self.name, ATB_ACROBATICS, 50, 240);
		player:BoostAttribute(self.name, ATB_STAMINA, 50, 240);
		player:BoostAttribute(self.name, ATB_AGILITY, 50, 240);
		player:BoostAttribute(self.name, ATB_STRENGTH, 50, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Заряд бодрости пробежался по вашим жилам.")
	elseif effect == 7 then
		player:SetCharacterData("Stamina", 10);
		player:BoostAttribute(self.name, ATB_STAMINA, -5, 240);
		player:BoostAttribute(self.name, ATB_ACROBATICS, -5, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Вы начали чувствовать себя плохо.")
	else
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, но ничего не изменилось.")
	end
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();