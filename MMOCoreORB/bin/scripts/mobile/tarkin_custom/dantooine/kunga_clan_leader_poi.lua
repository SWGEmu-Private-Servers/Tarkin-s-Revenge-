kunga_clan_leader_poi = Creature:new {
	objectName = "@mob/creature_names:kunga_clan_leader",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 250,
	chanceHit = 6,
	damageMin = 200,
	damageMax = 950,
	baseXp = 28549,
	baseHAM = 55000,
	baseHAMmax = 60000,
	armor = 3,
	resists = {45,45,45,45,45,45,45,45,-1},
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

	templates = {"object/mobile/dantari_male.iff"},
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
			lootChance = 4000000
		},
		{
			groups = {
				{group = "kunga_cave_rare", chance = 10000000}
			},
			lootChance = 1800000
		},
	},
	weapons = {"kunga_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(kunga_clan_leader_poi, "kunga_clan_leader_poi")
