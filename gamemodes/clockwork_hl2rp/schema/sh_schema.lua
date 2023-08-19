--[[
	� CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

Clockwork.kernel:IncludePrefixed("cl_schema.lua");
Clockwork.kernel:IncludePrefixed("cl_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_theme.lua");
Clockwork.kernel:IncludePrefixed("sh_hooks.lua");
Clockwork.kernel:IncludePrefixed("sv_schema.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");

Schema.customPermits = {};

for k, v in pairs(_file.Find("models/humans/group17/*.mdl", "GAME")) do
	Clockwork.animation:AddMaleHumanModel("models/humans/group17/"..v);
end;

Clockwork.animation:AddCivilProtectionModel("models/police/eliteghostcp.mdl");
Clockwork.animation:AddCivilProtectionModel("models/police/eliteshockcp.mdl");
Clockwork.animation:AddCivilProtectionModel("models/police/leet_police2.mdl");
Clockwork.animation:AddCivilProtectionModel("models/police/sect_police2.mdl");
Clockwork.animation:AddCivilProtectionModel("models/police/policetrench.mdl");

Clockwork.option:SetKey("default_date", {month = 1, year = 2016, day = 1});
Clockwork.option:SetKey("default_time", {minute = 0, hour = 0, day = 1});
Clockwork.option:SetKey("model_shipment", "models/items/item_item_crate.mdl");
Clockwork.option:SetKey("intro_image", "halfliferp/hl2rp_logo");
Clockwork.option:SetKey("schema_logo", "halfliferp/hl2rp_logo");
Clockwork.option:SetKey("menu_music", "music/hl2_song32.mp3");
Clockwork.option:SetKey("model_cash", "models/props_lab/box01a.mdl");
Clockwork.option:SetKey("gradient", "gui/gradient_down");

Clockwork.config:ShareKey("intro_text_small");
Clockwork.config:ShareKey("intro_text_big");
Clockwork.config:ShareKey("business_cost");
Clockwork.config:ShareKey("permits");

Clockwork.quiz:SetEnabled(false);
Clockwork.quiz:AddQuestion("Вы понимаете, что РП очень медленный режим?", 1, "Да.", "Нет.");
Clockwork.quiz:AddQuestion("Вы понимаете, что вы должны писать грамотно, используя заглавные буквы?", 2, "Окей.", "Да, я понимаю.", "Нет.");
Clockwork.quiz:AddQuestion("Что вы будете делать если на вас наставят оружие?", 3, "Попробую сразу же убежать.", "Попробую убить врага.", "Буду делать все, что мне скажут.");
Clockwork.quiz:AddQuestion("В глобальном чате написали, что вас идут убить. Ваши действия?", 2, "Убегу от туда, или займу оборону.", "Ничего не буду предпринимать.");
Clockwork.quiz:AddQuestion("Как вы понимаете РП режим (ролевая игра)?", 2, "Убийство других игроков.", "Развитие своего персонажа.", "Строительство.", "Выживание, добыча ресурсов.");
Clockwork.quiz:AddQuestion("В какой вселенной происходят действия данного РП режима?", 2, "Реальная жизнь", "Half-Life 2", "Garry's Mod", "Roleplay");

Clockwork.flag:Add("v", "Light Blackmarket", "Access to light blackmarket goods.");
Clockwork.flag:Add("V", "Heavy Blackmarket", "Access to heavy blackmarket goods.");
Clockwork.flag:Add("m", "Resistance Manager", "Access to the resistance manager's goods.");
Clockwork.flag:Add("D", "D-flag", "Your character will never get permakill.");
Clockwork.flag:Add("k", "Clerk", "It allows you to edit the notelibs.");

Clockwork.command:AddAlias("StorageGiveCash", "StorageGiveTokens");
Clockwork.command:AddAlias("StorageTakeTokens", "StorageTakeTokens");
Clockwork.command:AddAlias("GiveCash", "GiveTokens");
Clockwork.command:AddAlias("DropCash", "DropTokens");
Clockwork.command:AddAlias("SetCash", "SetTokens");

-- A function to add a custom permit.
function Schema:AddCustomPermit(name, flag, model)
	local formattedName = string.gsub(name, "[%s%p]", "");
	local lowerName = string.lower(name);
	
	self.customPermits[ string.lower(formattedName) ] = {
		model = model,
		name = name,
		flag = flag,
		key = Clockwork.kernel:SetCamelCase(formattedName, true)
	};
end;

-- A function to get if a faction is Combine.
function Schema:IsCombineFaction(faction)
	return (faction == FACTION_MPF or faction == FACTION_OTA or faction == FACTION_INCOG);
end;
