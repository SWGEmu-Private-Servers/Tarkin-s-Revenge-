jinda_outcast_poi = Creature:new {
	objectName = "@mob/creature_names:jinda_outcast",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "self",
	faction = "",
	level = 100,
	chanceHit = 0.9,
	damageMin = 500,
	damageMax = 650,
	baseXp = 15174,
	baseHAM = 35000,
	baseHAMmax = 37100,
	armor = 2,
	resists = {40,65,10,50,-1,-1,50,60,-1},
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
	weapons = {"jinda_pistol_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(jinda_outcast_poi, "jinda_outcast_poi")
