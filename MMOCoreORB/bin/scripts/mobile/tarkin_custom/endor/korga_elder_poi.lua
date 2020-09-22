korga_elder_poi = Creature:new {
	objectName = "@mob/creature_names:korga_elder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 100,
	chanceHit = 0.9,
	damageMin = 375,
	damageMax = 485,
	baseXp = 15174,
	baseHAM = 35000,
	baseHAMmax = 37100,
	armor = 2,
	resists = {35,-1,60,10,40,65,40,15,-1},
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
			lootChance = 200000
		},
		{
			groups = {
				{group = "korga_cave_rare", chance = 9888889},
				{group = "deed_voucher", chance = 111111}
			},
			lootChance = 500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(korga_elder_poi, "korga_elder_poi")
