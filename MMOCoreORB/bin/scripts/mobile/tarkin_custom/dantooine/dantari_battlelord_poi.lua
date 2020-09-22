dantari_battlelord_poi = Creature:new {
	objectName = "@mob/creature_names:dantari_raider_battlelord",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dantari_raiders",
	faction = "dantari_raiders",
	level = 125,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 795,
	baseXp = 18424,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 2,
	resists = {25,45,25,45,45,80,45,-1,-1},
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
			lootChance = 400000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(dantari_battlelord_poi, "dantari_battlelord_poi")
