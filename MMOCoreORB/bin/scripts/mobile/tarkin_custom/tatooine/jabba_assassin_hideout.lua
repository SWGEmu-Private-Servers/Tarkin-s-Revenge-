jabba_assassin_hideout = Creature:new {
	objectName = "@mob/creature_names:jabba_assassin",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jabba",
	faction = "jabba",
	level = 136,
	chanceHit = 4.0,
	damageMin = 500,
	damageMax = 750,
	baseXp = 15400,
	baseHAM = 48300,
	baseHAMmax = 52000,
	armor = 0,
	resists = {70,85,85,90,85,90,85,90,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_jabba_assassin.iff"},
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
			lootChance = 500000
		},
		{	
			groups = {
				{group = "hutt_hideout_rare", chance = 10000000}
			},
			lootChance = 100000
		},
			
	},
	weapons = {"hutt_hideout_rifle_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,riflemanmaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(jabba_assassin_hideout, "jabba_assassin_hideout")
