jabba_henchman_hideout = Creature:new {
	objectName = "@mob/creature_names:jabba_henchman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jabba",
	faction = "jabba",
	level = 80,
	chanceHit = 0.75,
	damageMin = 250,
	damageMax = 300,
	baseXp = 8100,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 0,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_jabba_henchman.iff"},
	lootGroups = {
		{
			groups = {
				{group = "hutt_hideout_common", chance = 1600000},
				{group = "generic_tech", chance = 2000000},
				{group = "generic_consoles", chance = 1600000},
				{group = "loot_kit_parts", chance = 1600000},
				{group = "printer_parts", chance = 1600000},
				{group = "jabba_common", chance = 1600000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 100000
		},
		{	
			groups = {
				{group = "hutt_hideout_rare", chance = 10000000}
			},
			lootChance = 52910
		},
			
	},
	weapons = {"hutt_hideout_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,pistoleermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(jabba_henchman_hideout, "jabba_henchman_hideout")
