jinda_shaman_poi = Creature:new {
	objectName = "@mob/creature_names:jinda_shaman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jinda_tribe",
	faction = "",
	level = 95,
	chanceHit = 0.8,
	damageMin = 475,
	damageMax = 650,
	baseXp = 12174,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 2,
	resists = {25,35,10,20,50,-1,60,25,-1},
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
	creatureBitmask = PACK + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/jinda_male.iff",
		"object/mobile/jinda_male_01.iff",
		"object/mobile/jinda_female.iff",
		"object/mobile/jinda_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "loot_kit_parts", chance = 1750000},
				{group = "wookiee_loot_common", chance = 1750000},
				{group = "ewok", chance = 1750000},
				{group = "jinda_cave_common", chance = 1750000}
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
				{group = "jinda_cave_rare", chance = 10000000}
			},
			lootChance = 200000
		},
	},
	weapons = {"jinda_pikeman_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(jinda_shaman_poi, "jinda_shaman_poi")
