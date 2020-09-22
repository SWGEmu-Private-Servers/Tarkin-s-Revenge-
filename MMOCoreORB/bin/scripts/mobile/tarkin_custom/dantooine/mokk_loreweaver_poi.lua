mokk_loreweaver_poi = Creature:new {
	objectName = "@mob/creature_names:mokk_loreweaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mokk_tribe",
	faction = "mokk_tribe",
	level = 100,
	chanceHit = 0.9,
	damageMin = 500,
	damageMax = 650,
	baseXp = 15174,
	baseHAM = 35000,
	baseHAMmax = 37100,
	armor = 2,
	resists = {50,-1,60,10,40,65,40,15,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "loot_kit_parts", chance = 1750000},
				{group = "melee_weapons", chance = 1750000},
				{group = "printer_parts", chance = 1750000},
				{group = "mokk_cave_common", chance = 1750000}
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
				{group = "mokk_cave_rare", chance = 10000000}
			},
			lootChance = 300000
		},
	},
	weapons = {"mokk_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(mokk_loreweaver_poi, "mokk_loreweaver_poi")
