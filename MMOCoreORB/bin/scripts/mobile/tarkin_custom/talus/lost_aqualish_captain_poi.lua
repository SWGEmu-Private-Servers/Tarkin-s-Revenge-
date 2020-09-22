lost_aqualish_captain_poi = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_captain",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 115,
	chanceHit = 2.0,
	damageMin = 500,
	damageMax = 750,
	baseXp = 12900,
	baseHAM = 53400,
	baseHAMmax = 58000,
	armor = 2,
	resists = {40,40,60,35,55,70,35,40,-1},
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
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_lost_aqualish_captain_female_01.iff",
		"object/mobile/dressed_lost_aqualish_captain_male_01.iff"},
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
			lootChance = 300000
		},
		{	
			groups = {
				{group = "lost_aqualish_poi_rare", chance = 10000000},	
			},
			lootChance = 500000
		},		
	},
	weapons = {"aqualish_carbine_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_captain_poi, "lost_aqualish_captain_poi")
