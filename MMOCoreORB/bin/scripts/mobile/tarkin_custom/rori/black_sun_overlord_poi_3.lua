black_sun_overlord_poi_3 = Creature:new {
	customName = "Black Sun Overlord",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 221,
	chanceHit = 19,
	damageMin = 1244,
	damageMax = 2200,
	baseXp = 20948,
	baseHAM = 350000,
	baseHAMmax = 450000,
	armor = 3,
	resists = {70,70,80,70,35,35,85,60,55},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "black_sun_outpost_common", chance = 2000000},
				{group = "loot_kit_parts", chance = 1300000},
				{group = "power_crystals", chance = 200000},
				{group = "color_crystals", chance = 700000},
				{group = "pistols", chance = 900000},
				{group = "rifles", chance = 900000},
				{group = "carbines", chance = 900000},
				{group = "heavy_weapons", chance = 300000},
				{group = "heavy_weapons_rifle", chance = 300000},
				{group = "skill_buffs", chance = 600000},
				{group = "printer_parts", chance = 1000000},
				{group = "tailor_components", chance = 900000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "death_watch_bunker_commoners", chance = 2500000},
				{group = "death_watch_bunker_lieutenants", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000}	
			},
			lootChance = 9000000
		},
		{	
			groups = {
				{group = "black_sun_outpost_rare", chance = 4000000},
				{group = "bounty_hunter_schemes", chance = 2400000},
				{group = "black_sun_mando_armor", chance = 1500000},
				{group = "deed_voucher", chance = 100000},
				{group = "death_watch_bunker_ingredient_protective",  chance = 1000000},
				{group = "death_watch_bunker_ingredient_binary",  chance = 1000000}		
			},
			lootChance = 250000
		},		
	},
	weapons = {"black_sun_outpost_ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,commandomaster,bountyhuntermaster,fencermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_overlord_poi_3, "black_sun_overlord_poi_3")
