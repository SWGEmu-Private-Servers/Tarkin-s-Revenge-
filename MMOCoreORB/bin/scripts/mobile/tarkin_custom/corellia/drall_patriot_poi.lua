drall_patriot_poi = Creature:new {
	objectName = "@mob/creature_names:drall_patriot",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "drall",
	faction = "drall",
	level = 50,
	chanceHit = 0.5,
	damageMin = 250,
	damageMax = 300,
	baseXp = 8100,
	baseHAM = 21000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {10,25,10,-1,25,60,5,5,-1},
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

	templates = {
		"object/mobile/drall_male.iff",
		"object/mobile/drall_female.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "drall_patriot_poi_common", chance = 1400000},
				{group = "generic_tech", chance = 1300000},
				{group = "color_crystals", chance = 1000000},
				{group = "generic_consoles", chance = 1300000},
				{group = "misc_decoloot_schemes", chance = 1600000},
				{group = "tailor_components", chance = 1600000},
				{group = "loot_kit_parts", chance = 750000},
				{group = "printer_parts", chance = 750000},
				{group = "cu_nge_pistols", chance = 100000},
				{group = "cu_nge_carbines", chance = 100000},
				{group = "cu_nge_rifles", chance = 100000}
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
				{group = "drall_patriot_poi_rare", chance = 10000000}
			},
			lootChance = 50000
		},
			
	},
	weapons = {"drall_ranged_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pistoleermaster,carbineermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(drall_patriot_poi, "drall_patriot_poi")
