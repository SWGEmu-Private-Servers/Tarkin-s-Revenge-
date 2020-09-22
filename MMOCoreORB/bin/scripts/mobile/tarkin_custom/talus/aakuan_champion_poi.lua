aakuan_champion_poi = Creature:new {
	objectName = "@mob/creature_names:aakuan_champion",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "aakuans",
	faction = "aakuans",
	level = 130,
	chanceHit = 0.65,
	damageMin = 290,
	damageMax = 300,
	baseXp = 15097,
	baseHAM = 50000,
	baseHAMmax = 65000,
	armor = 3,
	resists = {60,60,30,20,40,35,60,35,1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_champion_zabrak_female_01.iff",
		"object/mobile/dressed_aakuan_champion_zabrak_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 600000},
				{group = "aakuan_common", chance = 2900000},
				{group = "armor_attachments", chance = 600000},
				{group = "rifles", chance = 1850000},
				{group = "carbines", chance = 1850000},
				{group = "pistols", chance = 1800000},
				{group = "aakuan_rare", chance = 400000}
			},
		    lootChance = 5000000
		}
	},
	weapons = {"aakuan_champion_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_champion_poi, "aakuan_champion_poi")
