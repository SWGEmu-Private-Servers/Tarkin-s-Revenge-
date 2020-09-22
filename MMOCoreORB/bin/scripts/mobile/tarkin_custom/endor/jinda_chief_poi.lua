jinda_chief_poi = Creature:new {
	objectName = "@mob/creature_names:jinda_chief",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jinda_tribe",
	faction = "",
	level = 250,
	chanceHit = 6,
	damageMin = 400,
	damageMax = 950,
	baseXp = 28549,
	baseHAM = 55000,
	baseHAMmax = 60000,
	armor = 3,
	resists = {45,55,35,25,65,55,45,45,-1},
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
			lootChance = 4000000
		},
		{
			groups = {
				{group = "jinda_cave_rare", chance = 10000000}
			},
			lootChance = 1800000
		},
	},
	weapons = {"jinda_rifle_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(jinda_chief_poi, "jinda_chief_poi")