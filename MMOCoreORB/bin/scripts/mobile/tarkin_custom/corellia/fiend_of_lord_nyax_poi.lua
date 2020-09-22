fiend_of_lord_nyax_poi = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_fiend",
	socialGroup = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 90,
	chanceHit = 0.8,
	damageMin = 305,
	damageMax = 320,
	baseXp = 8005,
	baseHAM = 35000,
	baseHAMmax = 37100,
	armor = 1,
	resists = {40,65,10,50,-1,-1,50,60,-1},
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

	templates = {"object/mobile/dressed_dark_jedi_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "melee_two_handed", chance = 1500000},
				{group = "color_crystals", chance = 2000000},
				{group = "printer_parts", chance = 1500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
   		            	{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 200000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5500000},
				{group = "nyax_minions", chance = 4500000}
			},
			lootChance = 200000
		},
	},
	weapons = {"aakuan_rifle_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(fiend_of_lord_nyax_poi, "fiend_of_lord_nyax_poi")
