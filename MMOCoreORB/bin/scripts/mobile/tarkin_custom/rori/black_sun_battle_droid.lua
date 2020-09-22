black_sun_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_battle_droid",
	socialGroup = "death_watch",
	faction = "",
	level = 134,
	chanceHit = 3.5,
	damageMin = 350,
	damageMax = 550,
	baseXp = 12612,
	baseHAM = 55000,
	baseHAMmax = 55000,
	armor = 2,
	resists = {35,35,60,10,60,5,20,45,-1},
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

	templates = {
		"object/mobile/death_watch_battle_droid.iff",
		"object/mobile/death_watch_battle_droid_02.iff",
		"object/mobile/death_watch_battle_droid_03.iff"},
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
				{group = "droid_loot", chance = 5000000},
				{group = "death_watch_bunker_commoners", chance = 5000000}			},
			lootChance = 6500000
		},
		{	
			groups = {
				{group = "black_sun_outpost_rare", chance = 7000000},
				{group = "bounty_hunter_schemes", chance = 1900000},
				{group = "black_sun_mando_armor", chance = 1000000},
				{group = "deed_voucher", chance = 100000}		
			},
			lootChance = 400000
		},
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_battle_droid, "black_sun_battle_droid")
