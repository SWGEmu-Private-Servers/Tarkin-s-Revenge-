korga_chieftain_poi = Creature:new {
	objectName = "@mob/creature_names:korga_chieftan",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 250,
	chanceHit = 6,
	damageMin = 300,
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
			lootChance = 4000000
		},
		{
			groups = {
				{group = "korga_cave_rare", chance = 9888889},
				{group = "deed_voucher", chance = 111111}
			},
			lootChance = 1800000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(korga_chieftain_poi, "korga_chieftain_poi")
