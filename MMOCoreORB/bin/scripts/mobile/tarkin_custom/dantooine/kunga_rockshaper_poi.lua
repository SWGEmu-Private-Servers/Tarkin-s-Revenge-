kunga_rockshaper_poi = Creature:new {
	objectName = "@mob/creature_names:kunga_rockshaper",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 180,
	chanceHit = 3,
	damageMin = 700,
	damageMax = 1250,
	baseXp = 18424,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 2,
	resists = {70,20,70,20,20,70,20,-1,-1},
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
				{group = "kunga_cave_common", chance = 1750000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 600000
		},
		{
			groups = {
				{group = "kunga_cave_rare", chance = 10000000}
			},
			lootChance = 600000
		},
	},
	weapons = {"kunga_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(kunga_rockshaper_poi, "kunga_rockshaper_poi")
