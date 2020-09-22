fanatic_of_lord_nyax_poi = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_fanatic",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 100,
	chanceHit = 0.90,
	damageMin = 180,
	damageMax = 375,
	baseXp = 9803,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 1,
	resists = {50,20,5,25,70,-1,25,50,-1},
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

	templates = {"object/mobile/dressed_dark_jedi_human_female_01.iff"},
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
	weapons = {"nyax_fanatic_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(swordsmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(fanatic_of_lord_nyax_poi, "fanatic_of_lord_nyax_poi")
