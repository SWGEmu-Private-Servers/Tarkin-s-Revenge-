lost_aqualish_lookout_poi = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_lookout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 60,
	chanceHit = 0.6,
	damageMin = 250,
	damageMax = 265,
	baseXp = 8102,
	baseHAM = 30405,
	baseHAMmax = 31495,
	armor = 1,
	resists = {40,20,40,20,50,10,-1,-1,-1},
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
		"object/mobile/dressed_lost_aqualish_lookout_female_01.iff",
		"object/mobile/dressed_lost_aqualish_lookout_male_01.iff"},
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
	weapons = {"aqualish_polearm_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermid,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_lookout_poi, "lost_aqualish_lookout_poi")
