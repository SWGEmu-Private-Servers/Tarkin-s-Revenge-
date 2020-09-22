lord_nyax_poi = Creature:new {
	objectName = "@mob/creature_names:lord_nyax",
	socialGroup = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 160,
	chanceHit = 5.3,
	damageMin = 775,
	damageMax = 1260,
	baseXp = 15235,
	baseHAM = 58000,
	baseHAMmax = 81000,
	armor = 2,
	resists = {80,45,40,20,50,90,10,15,5},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_lord_nyax.iff"},
	lootGroups = {
		{
		groups = {
				{group = "nyax", chance = 5000000},
				{group = "power_crystals", chance = 5000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
   		     	    	{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "nyax_minions", chance = 4000000},
				{group = "theme_park_loot_rebel_pirate_holocron", chance = 1000000}
			},
			lootChance = 1500000
		}
	},
	weapons = {"nyaxs_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(lord_nyax_poi, "lord_nyax_poi")
