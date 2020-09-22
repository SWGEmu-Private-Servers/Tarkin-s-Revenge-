naboo_pirate_cutthroat_bunker = Creature:new {
	objectName = "@mob/creature_names:naboo_pirate_cutthroat",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "naboo_pirate",
	customName = "a Pirate Cutthroat",
	faction = "naboo_pirate",
	level = 80,
	chanceHit = 0.75,
	damageMin = 85,
	damageMax = 100,
	baseXp = 8005,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 1,
	resists = {40,65,10,50,20,20,50,60,-1},
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
	creatureBitmask = PACK + STALKER,
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
			lootChance = 100000
		},
		{	
			groups = {
				{group = "pirate_bunker_rare", chance = 10000000}
			},
			lootChance = 100000
		},
	},
	weapons = {"pirate_bunker_rifles"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(riflemanmaster,fencermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(naboo_pirate_cutthroat_bunker, "naboo_pirate_cutthroat_bunker")
