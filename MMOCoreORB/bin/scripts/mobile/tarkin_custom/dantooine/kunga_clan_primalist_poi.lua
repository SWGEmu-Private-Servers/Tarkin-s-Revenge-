kunga_clan_primalist_poi = Creature:new {
	objectName = "@mob/creature_names:kunga_clan_primalist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 40,
	chanceHit = 0.8,
	damageMin = 475,
	damageMax = 650,
	baseXp = 12174,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 2,
	resists = {15,45,60,10,10,25,-1,25,-1},
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
	creatureBitmask = PACK + HERD,
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

CreatureTemplates:addCreatureTemplate(kunga_clan_primalist_poi, "kunga_clan_primalist_poi")
