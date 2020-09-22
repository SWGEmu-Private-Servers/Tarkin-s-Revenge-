untrained_wielder_of_the_dark_side_cave = Creature:new {
	objectName = "@mob/creature_names:untrained_wielder_of_the_dark_side",
	customName = "an Untrained Force Wielder",
	socialGroup = "kun",
	faction = "",
	level = 65,
	chanceHit = 0.6,
	damageMin = 545,
	damageMax = 800,
	baseXp = 6288,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {85,85,65,65,65,65,65,65,40},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_untrained_wielder_of_the_darkside.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2500000},
				{group = "crystal_hunter_common", chance = 2000000},
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
			lootChance = 50000
		},
		{	
			groups = {
				{group = "crystal_hunter_rare", chance = 10000000}
			},
			lootChance = 50000
		},
			
	},
	weapons = {"crystal_hunter_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(untrained_wielder_of_the_dark_side_cave, "untrained_wielder_of_the_dark_side_cave")
