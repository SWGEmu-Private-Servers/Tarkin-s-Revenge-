black_sun_smuggler_poi = Creature:new {
	objectName = "@mob/creature_names:black_sun_smuggler",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 112,
	chanceHit = 2.5,
	damageMin = 350,
	damageMax = 450,
	baseXp = 12174,
	baseHAM = 30000,
	baseHAMmax = 40000,
	armor = 2,
	resists = {55,65,70,30,70,30,30,55,-1},
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

	templates = {"object/mobile/dressed_black_sun_henchman.iff"},
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
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 200000
		},
		{	
			groups = {
				{group = "black_sun_outpost_rare", chance = 7000000},
				{group = "black_sun_mando_armor", chance = 2900000},
				{group = "deed_voucher", chance = 100000}		
			},
			lootChance = 100000
		},		
	},
	weapons = {"black_sun_outpost_ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermid,smugglermid,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_smuggler_poi, "black_sun_smuggler_poi")
