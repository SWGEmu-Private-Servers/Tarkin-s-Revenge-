dantari_strategist_poi = Creature:new {
	objectName = "@mob/creature_names:dantari_raider_strategist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dantari_raiders",
	faction = "dantari_raiders",
	level = 100,
	chanceHit = 0.9,
	damageMin = 500,
	damageMax = 650,
	baseXp = 15174,
	baseHAM = 35000,
	baseHAMmax = 37100,
	armor = 1,
	resists = {10,45,15,10,10,70,5,-1,-1},
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
	creatureBitmask = PACK,
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
			lootChance = 200000
		},
		{
			groups = {
				{group = "dantari_poi_rare", chance = 10000000}
			},
			lootChance = 200000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(dantari_strategist_poi, "dantari_strategist_poi")
