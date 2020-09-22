corsec_deserter_poi = Creature:new {
	objectName = "@mob/creature_names:corsec_deserter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rogue_corsec",
	faction = "rogue_corsec",
	level = 80,
	chanceHit = 0.8,
	damageMin = 250,
	damageMax = 265,
	baseXp = 8100,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 1,
	resists = {30,45,10,50,40,10,50,30,-1},
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
		"object/mobile/dressed_corsec_pilot_human_female_01.iff",
		"object/mobile/dressed_corsec_pilot_human_male_01.iff",
		"object/mobile/dressed_corsec_officer_human_male_01.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "rogue_corsec_base_common", chance = 1600000},
				{group = "generic_tech", chance = 1300000},
				{group = "color_crystals", chance = 1000000},
				{group = "generic_consoles", chance = 1300000},
				{group = "corsec_weapons", chance = 1600000},
				{group = "misc_decoloot_schemes", chance = 1600000},
				{group = "tailor_components", chance = 1600000}
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
				{group = "rogue_corsec_base_rare", chance = 10000000}
			},
			lootChance = 100000
		},
			
	},
	weapons = {"rogue_corsec_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(corsec_deserter_poi, "corsec_deserter_poi")
