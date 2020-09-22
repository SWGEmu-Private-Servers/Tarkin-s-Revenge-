webweaver = Creature:new {
	customName = "a webweaver",
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 150,
	chanceHit = 2.0,
	damageMin = 400,
	damageMax = 600,
	baseXp = 19000,
	baseHAM = 44810,
	baseHAMmax = 57990,
	armor = 2,
	resists = {50,20,50,20,70,5,25,50,-1},
	meatType = "meat_insect",
	meatAmount = 400,
	hideType = "hide_scaley",
	hideAmount = 300,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/webweaver.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_webweaver.iff",

	lootGroups = {
		{
			groups = {
				{group = "spiderclan_poi_webweaver", chance = 10000000},
			},
			lootChance = 2500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"mediumpoison",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(webweaver, "webweaver")
