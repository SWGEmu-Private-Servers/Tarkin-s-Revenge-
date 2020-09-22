mokk_warrior_poi = Creature:new {
	objectName = "@mob/creature_names:mokk_warrior",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mokk_tribe",
	faction = "mokk_tribe",
	level = 140,
	chanceHit = 2,
	damageMin = 650,
	damageMax = 1000,
	baseXp = 18424,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 2,
	resists = {25,45,-1,25,25,80,25,30,-1},
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
	creatureBitmask = PACK + HERD,
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
			lootChance = 500000
		},
		{
			groups = {
				{group = "mokk_cave_rare", chance = 10000000}
			},
			lootChance = 500000
		},
	},
	weapons = {"mokk_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(mokk_warrior_poi, "mokk_warrior_poi")
