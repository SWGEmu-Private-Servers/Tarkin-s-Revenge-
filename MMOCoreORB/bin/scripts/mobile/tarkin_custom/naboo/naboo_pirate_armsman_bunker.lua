naboo_pirate_armsman_bunker = Creature:new {
	objectName = "@mob/creature_names:naboo_pirate_armsman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "naboo_pirate",
	faction = "naboo_pirate",
	level = 100,
	chanceHit = 0.95,
	damageMin = 220,
	damageMax = 300,
	baseXp = 10100,
	baseHAM = 47300,
	baseHAMmax = 51000,
	armor = 2,
	resists = {50,50,60,10,40,50,20,0,-1},
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
	creatureBitmask = PACK + KILLER,
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
			lootChance = 500000
		},
		{	
			groups = {
				{group = "deed_voucher", chance = 10000000}
			},
			lootChance = 25000

		},
	},
	weapons = {"pirate_bunker_rifles"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(riflemanmaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(naboo_pirate_armsman_bunker, "naboo_pirate_armsman_bunker")
