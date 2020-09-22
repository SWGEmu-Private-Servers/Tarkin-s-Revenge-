korga_dark_shaman_poi = Creature:new {
	objectName = "@mob/creature_names:korga_dark_shaman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 120,
	chanceHit = 1,
	damageMin = 485,
	damageMax = 525,
	baseXp = 18424,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 2,
	resists = {25,45,25,45,45,80,45,45,-1},
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
	creatureBitmask = PACK + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dulok_male.iff",
		"object/mobile/dulok_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "loot_kit_parts", chance = 1750000},
				{group = "wookiee_loot_common", chance = 1750000},
				{group = "ewok", chance = 1750000},
				{group = "korga_cave_common", chance = 1750000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 400000
		},
		{
			groups = {
				{group = "korga_cave_rare", chance = 9888889},
				{group = "deed_voucher", chance = 111111}
			},
			lootChance = 600000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(korga_dark_shaman_poi, "korga_dark_shaman_poi")
