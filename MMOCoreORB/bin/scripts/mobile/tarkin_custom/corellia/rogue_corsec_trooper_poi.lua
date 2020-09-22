rogue_corsec_trooper_poi = Creature:new {
	objectName = "@mob/creature_names:corsec_rogue",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rogue_corsec",
	faction = "rogue_corsec",
	level = 60,
	chanceHit = 0.6,
	damageMin = 105,
	damageMax = 120,
	baseXp = 7235,
	baseHAM = 30405,
	baseHAMmax = 31495,
	armor = 1,
	resists = {40,20,40,20,50,10,-1,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsec_officer_human_male_01.iff",
		"object/mobile/dressed_corsec_officer_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rogue_corsec_base_common", chance = 1600000},
				{group = "generic_tech", chance = 1300000},
				{group = "color_crystals", chance = 1000000},
				{group = "generic_consoles", chance = 1300000},
				{group = "corsec_weapons", chance = 1600000},
				{group = "misc_decoloot_schemes", chance = 1600000},
				{group = "tailor_components", chance = 1600000}
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
				{group = "rogue_corsec_base_rare", chance = 10000000}
			},
			lootChance = 100000
		},
			
	},
	weapons = {"rogue_corsec_carbine_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rogue_corsec_trooper_poi, "rogue_corsec_trooper_poi")
