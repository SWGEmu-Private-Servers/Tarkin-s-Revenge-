naboo_pirate_crewman_bunker = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	customName = "a Pirate Crewman",
	socialGroup = "naboo_pirate",
	faction = "naboo_pirate",
	level = 65,
	chanceHit = 0.65,
	damageMin = 75,
	damageMax = 90,
	baseXp = 7235,
	baseHAM = 30000,
	baseHAMmax = 34000,
	armor = 1,
	resists = {30,30,10,30,30,15,30,20,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_criminal_assassin_human_female_01.iff",
		"object/mobile/dressed_criminal_slicer_human_male_01.iff",
		"object/mobile/dressed_criminal_smuggler_human_male_01.iff",
		"object/mobile/dressed_criminal_smuggler_human_female_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
		"object/mobile/dressed_robber_twk_female_01.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "pirate_bunker_common", chance = 1600000},
				{group = "generic_tech", chance = 2000000},
				{group = "generic_consoles", chance = 1600000},
				{group = "loot_kit_parts", chance = 1600000},
				{group = "printer_parts", chance = 1600000},
				{group = "weapons_all", chance = 1600000}
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
				{group = "pirate_bunker_rare", chance = 10000000}
			},
			lootChance = 50000
		},
	},
	weapons = {"pirate_bunker_pistols"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,bountyhuntermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(naboo_pirate_crewman_bunker, "naboo_pirate_crewman_bunker")
