jinda_elder_poi = Creature:new {
	objectName = "@mob/creature_names:jinda_elder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jinda_tribe",
	faction = "",
	level = 75,
	chanceHit = 0.6,
	damageMin = 400,
	damageMax = 550,
	baseXp = 12174,
	baseHAM = 21000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {25,15,30,60,15,-1,25,25,-1},
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
			lootChance = 100000
		},
		{
			groups = {
				{group = "jinda_cave_rare", chance = 10000000}
			},
			lootChance = 100000
		},
	},
	weapons = {"jinda_rifle_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(jinda_elder_poi, "jinda_elder_poi")
