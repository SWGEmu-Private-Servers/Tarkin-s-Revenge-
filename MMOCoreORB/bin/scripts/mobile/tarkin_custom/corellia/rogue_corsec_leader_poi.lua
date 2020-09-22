rogue_corsec_leader_poi = Creature:new {
	customName = "Rogue Corsec Leader",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rogue_corsec",
	faction = "rogue_corsec",
	level = 190,
	chanceHit = 4.0,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/corsec_druno_kener.iff",
		"object/mobile/corsec_lieutenant_varias.iff",
		"object/mobile/corsec_sgt_hirka.iff",
		"object/mobile/corsec_sgt_mener.iff"
	},
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
			lootChance = 7000000
		},
		{	
			groups = {
				{group = "rogue_corsec_base_rare", chance = 10000000}
			},
			lootChance = 1500000
		},
			
	},
	weapons = {"rogue_corsec_heavy_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(rogue_corsec_leader_poi, "rogue_corsec_leader_poi")
