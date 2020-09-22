force_crystal_protector_cave = Creature:new {
	objectName = "@mob/creature_names:dark_force_crystal_hunter",
	customName = "Force Crystal Protector",
	socialGroup = "kun",
	faction = "",
	level = 220,
	chanceHit = 47.5,
	damageMin = 820,
	damageMax = 1550,
	baseXp = 26654,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {90,90,90,90,90,90,90,90,40},
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

	templates = {		
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},

	lootGroups = {
		{
			groups = {
				{group = "crystal_hunter_common", chance = 2500000},
				{group = "power_crystals", chance = 1000000},
				{group = "color_crystals", chance = 3000000},
				{group = "wearables_goggles", chance = 700000},
				{group = "broken_lightsabers", chance = 700000},
				{group = "theme_park_loot_rebel_pirate_holocron", chance = 700000},
				{group = "holocron_dark", chance = 700000},
				{group = "holocron_light", chance = 700000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 6000000
		},
		{	
			groups = {
				{group = "crystal_hunter_rare", chance = 10000000}
			},
			lootChance = 1800000
		},
			
	},
	weapons = {"crystal_hunter_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,brawlermaster,fencermaster,forcepowermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(force_crystal_protector_cave, "force_crystal_protector_cave")
