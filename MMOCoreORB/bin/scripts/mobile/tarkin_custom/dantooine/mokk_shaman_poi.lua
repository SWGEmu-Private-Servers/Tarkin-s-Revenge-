mokk_shaman_poi = Creature:new {
	objectName = "@mob/creature_names:mokk_shaman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mokk_tribe",
	faction = "mokk_tribe",
	level = 120,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 700,
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_female.iff",
		"object/mobile/dantari_male.iff"},
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
			lootChance = 400000
		},
		{
			groups = {
				{group = "mokk_cave_rare", chance = 10000000}
			},
			lootChance = 400000
		},
	},
	weapons = {"mokk_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(mokk_shaman_poi, "mokk_shaman_poi")
