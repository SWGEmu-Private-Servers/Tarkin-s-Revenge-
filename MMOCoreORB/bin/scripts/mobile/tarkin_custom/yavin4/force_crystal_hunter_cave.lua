force_crystal_hunter_cave = Creature:new {
	objectName = "@mob/creature_names:dark_force_crystal_hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kun",
	faction = "",
	level = 115,
	chanceHit = 1,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 10921,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,40},
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

	templates = {"object/mobile/dressed_dark_force_crystal_hunter.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystal_hunter_common", chance = 2500000},
				{group = "printer_parts", chance = 1000000},
				{group = "power_crystals", chance = 1000000},
				{group = "color_crystals", chance = 3000000},
				{group = "wearables_goggles", chance = 500000},
				{group = "broken_lightsabers", chance = 500000},
				{group = "theme_park_loot_rebel_pirate_holocron", chance = 500000},
				{group = "holocron_dark", chance = 500000},
				{group = "holocron_light", chance = 500000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 300000
		},
		{	
			groups = {
				{group = "crystal_hunter_rare", chance = 10000000}
			},
			lootChance = 300000
		},
			
	},
	weapons = {"crystal_hunter_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(force_crystal_hunter_cave, "force_crystal_hunter_cave")
