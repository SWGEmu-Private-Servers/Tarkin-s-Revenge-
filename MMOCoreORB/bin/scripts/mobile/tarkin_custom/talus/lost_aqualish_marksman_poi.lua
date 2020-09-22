lost_aqualish_marksman_poi = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_marksman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 80,
	chanceHit = 1.0,
	damageMin = 400,
	damageMax = 480,
	baseXp = 11390,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 1,
	resists = {55,65,70,30,70,5,10,55,-1},
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
		"object/mobile/dressed_lost_aqualish_marksman_female_01.iff",
		"object/mobile/dressed_lost_aqualish_marksman_male_01.iff"},
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
	attacks = merge(marksmanmid,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_marksman_poi, "lost_aqualish_marksman_poi")
