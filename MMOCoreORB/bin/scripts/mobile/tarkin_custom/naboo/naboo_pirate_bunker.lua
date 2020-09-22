naboo_pirate_bunker = Creature:new {
	objectName = "@mob/creature_names:naboo_pirate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "naboo_pirate",
	faction = "naboo_pirate",
	level = 90,
	chanceHit = 0.9,
	damageMin = 150,
	damageMax = 220,
	baseXp = 9800,
	baseHAM = 46700,
	baseHAMmax = 49000,
	armor = 1,
	resists = {50,20,5,25,70,20,25,50,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_criminal_assassin_human_female_01.iff",
		"object/mobile/dressed_criminal_slicer_human_male_01.iff",
		"object/mobile/dressed_criminal_smuggler_human_male_01.iff",
		"object/mobile/dressed_criminal_smuggler_human_female_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
		"object/mobile/dressed_robber_twk_female_01.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "pirate_bunker_common", chance = 1600000},
				{group = "generic_tech", chance = 2000000},
				{group = "generic_consoles", chance = 1600000},
				{group = "loot_kit_parts", chance = 1600000},
				{group = "printer_parts", chance = 1600000},
				{group = "weapons_all", chance = 1600000}
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
				{group = "pirate_bunker_rare", chance = 10000000}
			},
			lootChance = 200000
		},
		{	
			groups = {
				{group = "deed_voucher", chance = 10000000}
			},
			lootChance = 10000

		},
	},
	weapons = {"pirate_bunker_pistols"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,marksmanmaster,fencermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(naboo_pirate_bunker, "naboo_pirate_bunker")
