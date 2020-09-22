dantari_chief_poi = Creature:new {
	objectName = "@mob/creature_names:dantari_raider_chief",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dantari_raiders",
	faction = "dantari_raiders",
	level = 250,
	chanceHit = 6,
	damageMin = 895,
	damageMax = 1250,
	baseXp = 28549,
	baseHAM = 55000,
	baseHAMmax = 60000,
	armor = 3,
	resists = {50,50,30,40,30,100,30,-1,-1},
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
	creatureBitmask = PACK + KILLER,
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
				{group = "dantari_poi_common", chance = 1750000}
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
				{group = "dantari_poi_rare", chance = 10000000}
			},
			lootChance = 2500000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(dantari_chief_poi, "dantari_chief_poi")
