lost_aqualish_commando_poi = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_commando",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 75,
	chanceHit = 0.85,
	damageMin = 285,
	damageMax = 425,
	baseXp = 8102,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 1,
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_lost_aqualish_commando_female_01.iff",
		"object/mobile/dressed_lost_aqualish_commando_male_01.iff"},
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
			lootChance = 100000
		},
		{	
			groups = {
				{group = "lost_aqualish_poi_rare", chance = 10000000},	
			},
			lootChance = 100000
		},		
	},
	weapons = {"aqualish_carbine_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermid,marksmanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_commando_poi, "lost_aqualish_commando_poi")
