disciple_of_lord_nyax_poi = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_disciple",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 80,
	chanceHit = 0.75,
	damageMin = 250,
	damageMax = 300,
	baseXp = 8102,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 0,
	resists = {5,15,60,5,40,50,5,-1,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_patron_nikto_01.iff"},
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
			lootChance = 100000
		},
		{
			groups = {
                  		{group = "power_crystals", chance = 5500000},
				{group = "nyax_minions", chance = 4500000}
			},
			lootChance = 100000
		},
	},
	weapons = {"aakuan_2h_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(disciple_of_lord_nyax_poi, "disciple_of_lord_nyax_poi")
