jabba_compound_guard_hideout = Creature:new {
	objectName = "@mob/creature_names:jabba_compound_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jabba",
	faction = "jabba",
	level = 112,
	chanceHit = 0.90,
	damageMin = 350,
	damageMax = 420,
	baseXp = 9800,
	baseHAM = 46700,
	baseHAMmax = 49000,
	armor = 0,
	resists = {5,60,70,-1,40,55,15,0,-1},
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
			lootChance = 60000
		},
			
	},
	weapons = {"hutt_hideout_carbine_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,carbineermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(jabba_compound_guard_hideout, "jabba_compound_guard_hideout")
