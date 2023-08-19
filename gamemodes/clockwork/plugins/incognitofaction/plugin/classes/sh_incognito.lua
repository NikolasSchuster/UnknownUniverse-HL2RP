local CLASS = Clockwork.class:New("Секретный агент");
	CLASS.color = Color(255, 0, 0, 255);
	CLASS.factions = {FACTION_INCOG};
	CLASS.isDefault = true;
	CLASS.wagesName = "Funds";
	CLASS.description = "Никто не знает кто они. Они всегда остаются незамеченными. Эти люди... Люди ли они?";
	CLASS.defaultPhysDesc = "На вид 25 лет | Хитрый взгляд | Неадекватное поведение";
CLASS_INCOGNITO = CLASS:Register();