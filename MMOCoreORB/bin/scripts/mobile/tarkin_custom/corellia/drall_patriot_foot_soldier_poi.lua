drall_patriot_foot_soldier_poi = Creature:new {
	objectName = "@mob/creature_names:drall_patriot_footsoldier",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "drall",
	faction = "drall",
	level = 80,
	chanceHit = 0.75,
	damageMin = 300,
	damageMax = 450,
	baseXp = 10100,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 1,
	resists = {50,50,60,10,40,50,20,0,-1},
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
			lootChance = 100000
		},
		{	
			groups = {
				{group = "drall_patriot_poi_rare", chance = 10000000}
			},
			lootChance = 100000
		},
			
	},
	weapons = {"drall_unarmed_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(drall_patriot_foot_soldier_poi, "drall_patriot_foot_soldier_poi")
