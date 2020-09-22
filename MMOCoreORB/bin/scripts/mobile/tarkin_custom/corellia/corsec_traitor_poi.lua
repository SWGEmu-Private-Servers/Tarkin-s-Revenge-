corsec_traitor_poi = Creature:new {
	objectName = "@mob/creature_names:corsec_traitor",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rogue_corsec",
	faction = "rogue_corsec",
	level = 136,
	chanceHit = 1,
	damageMin = 500,
	damageMax = 750,
	baseXp = 15400,
	baseHAM = 48300,
	baseHAMmax = 52000,
	armor = 1,
	resists = {70,75,75,60,75,60,75,90,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsec_pilot_human_female_01.iff",
		"object/mobile/dressed_corsec_pilot_human_male_01.iff",
		"object/mobile/dressed_mercenary_destroyer_nikto_m.iff",
		"object/mobile/dressed_mercenary_elite_hum_m.iff",
		"object/mobile/dressed_mercenary_destroyer_hum_m.iff"
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
			lootChance = 500000
		},
		{	
			groups = {
				{group = "rogue_corsec_base_rare", chance = 10000000}
			},
			lootChance = 500000
		},
			
	},
	weapons = {"rogue_corsec_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(corsec_traitor_poi, "corsec_traitor_poi")
