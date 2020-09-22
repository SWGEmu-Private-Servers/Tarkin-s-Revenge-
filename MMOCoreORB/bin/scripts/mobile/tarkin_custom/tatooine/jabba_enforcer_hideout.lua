jabba_enforcer_hideout = Creature:new {
	objectName = "@mob/creature_names:jabba_enforcer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jabba",
	faction = "jabba",
	level = 128,
	chanceHit = 3.5,
	damageMin = 400,
	damageMax = 480,
	baseXp = 12900,
	baseHAM = 53440,
	baseHAMmax = 56000,
	armor = 1,
	resists = {55,65,70,25,30,55,55,30,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_jabba_enforcer.iff"},
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
			lootChance = 300000
		},
		{	
			groups = {
				{group = "hutt_hideout_rare", chance = 10000000}
			},
			lootChance = 75000
		},
			
	},
	weapons = {"hutt_hideout_carbine_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,carbineermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(jabba_enforcer_hideout, "jabba_enforcer_hideout")
