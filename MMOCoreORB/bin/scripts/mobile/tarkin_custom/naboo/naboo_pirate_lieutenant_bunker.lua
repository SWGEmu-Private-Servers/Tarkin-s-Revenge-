naboo_pirate_lieutenant_bunker = Creature:new {
	objectName = "@mob/creature_names:naboo_pirate_lieutenant",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "naboo_pirate",
	faction = "naboo_pirate",
	level = 115,
	chanceHit = 1.0,
	damageMin = 350,
	damageMax = 450,
	baseXp = 10100,
	baseHAM = 35000,
	baseHAMmax = 45000,
	armor = 2,
	resists = {55,65,70,30,70,5,10,55,-1},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
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
				{group = "pirate_bunker_common", chance = 2000000},
				{group = "generic_tech", chance = 2000000},
				{group = "generic_consoles", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "printer_parts", chance = 2000000}
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
				{group = "deed_voucher", chance = 6000000},
				{group = "smuggled_bantha_ivory", chance = 2000000},
				{group = "smuggled_bantha_ivory_projectile", chance = 2000000}
			},
			lootChance = 50000

		},
	},
	weapons = {"pirate_bunker_pistols"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster,pistoleermaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(naboo_pirate_lieutenant_bunker, "naboo_pirate_lieutenant_bunker")
