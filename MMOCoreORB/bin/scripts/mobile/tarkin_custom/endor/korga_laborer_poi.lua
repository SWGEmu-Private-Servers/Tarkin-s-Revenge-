korga_laborer_poi = Creature:new {
	objectName = "@mob/creature_names:korga_laborer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 75,
	chanceHit = 0.6,
	damageMin = 300,
	damageMax = 415,
	baseXp = 12174,
	baseHAM = 21000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {25,5,30,60,5,-1,25,25,-1},
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
			lootChance = 200000
		},
	},
	weapons = {"korga_carbine_weapons"},
	conversationTemplate = "",
	attacks = merge(carbineermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(korga_laborer_poi, "korga_laborer_poi")
