jinda_veteran_poi = Creature:new {
	objectName = "@mob/creature_names:jinda_veteran",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jinda_tribe",
	faction = "",
	level = 180,
	chanceHit = 3,
	damageMin = 700,
	damageMax = 800,
	baseXp = 18424,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 2,
	resists = {50,40,60,30,20,60,20,20,-1},
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
			lootChance = 500000
		},
		{
			groups = {
				{group = "jinda_cave_rare", chance = 10000000}
			},
			lootChance = 500000
		},
	},
	weapons = {"jinda_pistol_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(jinda_veteran_poi, "jinda_veteran_poi")
