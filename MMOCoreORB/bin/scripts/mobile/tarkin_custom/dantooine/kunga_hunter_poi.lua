kunga_hunter_poi = Creature:new {
	objectName = "@mob/creature_names:kunga_hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 85,
	chanceHit = 0.7,
	damageMin = 450,
	damageMax = 600,
	baseXp = 12174,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 2,
	resists = {25,40,25,30,15,80,50,-1,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "loot_kit_parts", chance = 1750000},
				{group = "melee_weapons", chance = 1750000},
				{group = "printer_parts", chance = 1750000},
				{group = "kunga_cave_common", chance = 1750000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 200000
		},
		{
			groups = {
				{group = "kunga_cave_rare", chance = 10000000}
			},
			lootChance = 200000
		},
	},
	weapons = {"kunga_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(kunga_hunter_poi, "kunga_hunter_poi")
