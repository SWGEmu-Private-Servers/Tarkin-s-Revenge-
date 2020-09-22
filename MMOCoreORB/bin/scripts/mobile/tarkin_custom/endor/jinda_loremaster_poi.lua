jinda_loremaster_poi = Creature:new {
	objectName = "@mob/creature_names:jinda_loremaster",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jinda_tribe",
	faction = "",
	level = 115,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 450,
	baseXp = 10100,
	baseHAM = 35000,
	baseHAMmax = 45000,
	armor = 2,
	resists = {55,65,70,30,70,30,30,55,-1},
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
	creatureBitmask = PACK,
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
			lootChance = 300000
		},
		{
			groups = {
				{group = "jinda_cave_rare", chance = 10000000}
			},
			lootChance = 300000
		},
	},
	weapons = {"jinda_pikeman_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(jinda_loremaster_poi, "jinda_loremaster_poi")
