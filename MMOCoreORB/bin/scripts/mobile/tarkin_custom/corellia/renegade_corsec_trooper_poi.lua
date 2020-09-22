renegade_corsec_trooper_poi = Creature:new {
	objectName = "@mob/creature_names:corsec_renegade",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rogue_corsec",
	faction = "rogue_corsec",
	level = 112,
	chanceHit = 0.9,
	damageMin = 350,
	damageMax = 420,
	baseXp = 9800,
	baseHAM = 46700,
	baseHAMmax = 49000,
	armor = 1,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsec_captain_human_female_01.iff",
		"object/mobile/dressed_corsec_captain_human_male_01.iff"},
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
			lootChance = 300000
		},
		{	
			groups = {
				{group = "rogue_corsec_base_rare", chance = 10000000}
			},
			lootChance = 300000
		},
			
	},
	weapons = {"rogue_corsec_rifle_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(riflemanmaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(renegade_corsec_trooper_poi, "renegade_corsec_trooper_poi")
