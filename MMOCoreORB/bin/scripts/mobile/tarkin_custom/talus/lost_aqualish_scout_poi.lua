lost_aqualish_scout_poi = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_scout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 50,
	chanceHit = 0.5,
	damageMin = 300,
	damageMax = 450,
	baseXp = 7235,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_lost_aqualish_scout_female_01.iff",
		"object/mobile/dressed_lost_aqualish_scout_male_01.iff"},
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
			lootChance = 50000
		},		
	},
	weapons = {"aqualish_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(marksmanmid,brawlernovice,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_scout_poi, "lost_aqualish_scout_poi")
