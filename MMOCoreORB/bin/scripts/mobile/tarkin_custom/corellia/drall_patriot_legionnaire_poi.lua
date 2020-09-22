drall_patriot_legionnaire_poi = Creature:new {
	objectName = "@mob/creature_names:drall_patriot_legionnare",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "drall",
	faction = "drall",
	level = 112,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 450,
	baseXp = 12174,
	baseHAM = 35000,
	baseHAMmax = 45000,
	armor = 2,
	resists = {55,65,70,30,70,30,30,55,-1},
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
		"object/mobile/drall_male.iff",
		"object/mobile/drall_female.iff"},
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
			lootChance = 300000
		},
		{	
			groups = {
				{group = "drall_patriot_poi_rare", chance = 10000000}
			},
			lootChance = 300000
		},
			
	},
	weapons = {"drall_ranged_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(pistoleermaster,carbineermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(drall_patriot_legionnaire_poi, "drall_patriot_legionnaire_poi")
