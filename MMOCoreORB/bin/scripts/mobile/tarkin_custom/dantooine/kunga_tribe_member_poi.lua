kunga_tribe_member_poi = Creature:new {
	objectName = "@mob/creature_names:kunga_tribesman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 50,
	chanceHit = 0.5,
	damageMin = 300,
	damageMax = 450,
	baseXp = 12174,
	baseHAM = 21000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {10,25,10,-1,25,60,5,5,-1},
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
				{group = "kunga_cave_common", chance = 1750000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 50000
		},
		{
			groups = {
				{group = "kunga_cave_rare", chance = 10000000}
			},
			lootChance = 50000
		},
	},
	weapons = {"kunga_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(kunga_tribe_member_poi, "kunga_tribe_member_poi")
