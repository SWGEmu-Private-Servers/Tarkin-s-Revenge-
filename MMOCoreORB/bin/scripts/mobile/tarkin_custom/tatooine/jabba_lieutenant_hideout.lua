jabba_lieutenant_hideout = Creature:new {
	objectName = "@mob/creature_names:jabba_assassin",
	customName = "Jabba's Lieutenant",
	socialGroup = "jabba",
	faction = "jabba",
	level = 220,
	chanceHit = 11.0,
	damageMin = 800,
	damageMax = 1200,
	baseXp = 30000,
	baseHAM = 250000,
	baseHAMmax = 263000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,40},
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

	templates = {"object/mobile/dressed_death_watch_grey.iff"},
	lootGroups = {
		{
			groups = {
				{group = "hutt_hideout_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 7000000
		},
		{	
			groups = {
				{group = "hutt_hideout_rare", chance = 10000000}
			},
			lootChance = 1500000
		},
			
	},
	weapons = {"hutt_hideout_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,pistoleermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(jabba_lieutenant_hideout, "jabba_lieutenant_hideout")
