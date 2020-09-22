korga_scout_poi = Creature:new {
	objectName = "@mob/creature_names:korga_scout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 95,
	chanceHit = 0.8,
	damageMin = 355,
	damageMax = 485,
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
			lootChance = 100000
		},
		{
			groups = {
				{group = "korga_cave_rare", chance = 9888889},
				{group = "deed_voucher", chance = 111111}
			},
			lootChance = 400000
		},
	},
	weapons = {"korga_pistol_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(korga_scout_poi, "korga_scout_poi")
