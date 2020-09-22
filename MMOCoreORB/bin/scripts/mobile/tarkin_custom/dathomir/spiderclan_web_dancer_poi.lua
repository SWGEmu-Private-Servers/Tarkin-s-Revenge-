spiderclan_web_dancer_poi = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_web_dancer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 88,
	chanceHit = 0.8,
	damageMin = 545,
	damageMax = 800,
	baseXp = 8408,
	baseHAM = 21000,
	baseHAMmax = 26000,
	armor = 1,
	resists = {35,35,35,95,95,95,95,95,40},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_web_dancer.iff"},
	lootGroups = {
		{
			groups = {
				{group = "ns_clothing", chance = 1700000},
				{group = "nightsister_common", chance = 1300000},
				{group = "power_crystals", chance = 800000},
				{group = "color_crystals", chance = 1700000},
				{group = "spiderclan_poi_common", chance = 2000000},
				{group = "melee_weapons", chance = 1600000},
				{group = "theme_park_loot_rebel_pirate_holocron", chance = 900000},
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
				{group = "spiderclan_poi_rare", chance = 5333330},
				{group = "nightsister_rare", chance = 4000000},
				{group = "deed_voucher", chance = 666670}
			},
			lootChance = 100000
		},
			
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_web_dancer_poi, "spiderclan_web_dancer_poi")
