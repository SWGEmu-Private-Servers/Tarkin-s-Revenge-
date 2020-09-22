black_sun_bloodguard_poi_3 = Creature:new {
	customName = "Black Sun Bloodguard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 121,
	chanceHit = 4,
	damageMin = 890,
	damageMax = 1400,
	baseXp = 11390,
	baseHAM = 93750,
	baseHAMmax = 93750,
	armor = 2,
	resists = {55,55,70,60,30,30,100,40,55},
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

	templates = {"object/mobile/dressed_death_watch_red.iff"},
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
			lootChance = 400000
		},
		{	
			groups = {
				{group = "death_watch_bunker_commoners", chance = 2500000},
				{group = "death_watch_bunker_lieutenants", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000}				
			},
			lootChance = 400000
		},
		{	
			groups = {
				{group = "black_sun_outpost_rare", chance = 6000000},
				{group = "bounty_hunter_schemes", chance = 2400000},
				{group = "black_sun_mando_armor", chance = 1500000},
				{group = "deed_voucher", chance = 100000}		
			},
			lootChance = 400000
		},
		{	
			groups = {
				{group = "black_sun_outpost_rare", chance = 6000000},
				{group = "bounty_hunter_schemes", chance = 2400000},
				{group = "black_sun_mando_armor", chance = 1500000},
				{group = "deed_voucher", chance = 100000}		
			},
			lootChance = 400000
		},		
	},
	weapons = {"black_sun_outpost_ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,carbineermaster,marksmanmaster,tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_bloodguard_poi_3, "black_sun_bloodguard_poi_3")
