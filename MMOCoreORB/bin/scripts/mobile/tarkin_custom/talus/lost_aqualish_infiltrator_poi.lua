lost_aqualish_infiltrator_poi = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_infiltrator",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 95,
	chanceHit = 1.0,
	damageMin = 500,
	damageMax = 600,
	baseXp = 12174,
	baseHAM = 52000,
	baseHAMmax = 56000,
	armor = 1,
	resists = {55,65,70,25,30,55,55,30,-1},
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
	creatureBitmask = PACK + HERD + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_lost_aqualish_infiltrator_female_01.iff",
		"object/mobile/dressed_lost_aqualish_infiltrator_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "lost_aqualish_poi_common", chance = 3000000},
				{group = "pistols", chance = 1800000},
				{group = "misc_decoloot_schemes", chance = 2200000},
				{group = "printer_parts", chance = 1600000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "binayre_common", chance = 400000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}	
			},
			lootChance = 200000
		},
		{	
			groups = {
				{group = "lost_aqualish_poi_rare", chance = 10000000},	
			},
			lootChance = 300000
		},		
	},
	weapons = {"aqualish_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_infiltrator_poi, "lost_aqualish_infiltrator_poi")
