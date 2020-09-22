force_sensitive_crypt_crawler_cave = Creature:new {
	objectName = "@mob/creature_names:force_sensitive_crypt_crawler",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kun",
	faction = "",
	level = 95,
	chanceHit = 0.9,
	damageMin = 685,
	damageMax = 1080,
	baseXp = 9057,
	baseHAM = 16000,
	baseHAMmax = 19000,
	armor = 2,
	resists = {45,45,45,45,45,45,45,45,40},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_force_sensitive_crypt_crawler.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2000000},
				{group = "crystal_hunter_common", chance = 2500000},
				{group = "printer_parts", chance = 1000000},
				{group = "power_crystals", chance = 1000000},
				{group = "color_crystals", chance = 3000000},
				{group = "wearables_goggles", chance = 100000},
				{group = "broken_lightsabers", chance = 100000},
				{group = "theme_park_loot_rebel_pirate_holocron", chance = 100000},
				{group = "holocron_dark", chance = 100000},
				{group = "holocron_light", chance = 100000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 100000
		},
		{	
			groups = {
				{group = "crystal_hunter_rare", chance = 10000000}
			},
			lootChance = 100000
		},
			
	},
	weapons = {"crystal_hunter_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(force_sensitive_crypt_crawler_cave, "force_sensitive_crypt_crawler_cave")
