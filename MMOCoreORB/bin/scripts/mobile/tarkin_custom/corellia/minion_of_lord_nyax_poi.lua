minion_of_lord_nyax_poi = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_minion",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 60,
	chanceHit = 0.6,
	damageMin = 230,
	damageMax = 260,
	baseXp = 7014,
	baseHAM = 30000,
	baseHAMmax = 34000,
	armor = 1,
	resists = {30,30,30,30,30,30,30,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_criminal_smuggler_human_male_01.iff"},
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
			lootChance = 50000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "nyax_minions", chance = 4000000},
				{group = "theme_park_loot_rebel_pirate_holocron", chance = 1000000}
			},
			lootChance = 50000
		},
	},
	weapons = {"nyax_fanatic_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(riflemanmaster, swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(minion_of_lord_nyax_poi, "minion_of_lord_nyax_poi")
