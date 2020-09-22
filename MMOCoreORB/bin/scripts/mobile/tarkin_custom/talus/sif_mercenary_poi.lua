sif_mercenary_poi = Creature:new {
	objectName = "@mob/creature_names:trandoshan_sif",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sif",
	faction = "sif",
	level = 80,
	chanceHit = 0.8,
	damageMin = 325,
	damageMax = 360,
	baseXp = 8100,
	baseHAM = 35000,
	baseHAMmax = 39000,
	armor = 1,
	resists = {30,45,10,50,40,10,50,30,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_talus_sif_mercenary_trand_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "erran_sif_bunker_common", chance = 2000000},
				{group = "generic_consoles", chance = 900000},
				{group = "generic_tech", chance = 900000},
				{group = "pistols", chance = 900000},
				{group = "rifles", chance = 900000},
				{group = "carbines", chance = 900000},
				{group = "heavy_weapons", chance = 500000},
				{group = "heavy_weapons_rifle", chance = 500000},
				{group = "skill_buffs", chance = 600000},
				{group = "printer_parts", chance = 1000000},
				{group = "tailor_components", chance = 900000}
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
				{group = "erran_sif_bunker_rare", chance = 10000000},	
			},
			lootChance = 100000
		},		
	},
	weapons = {"sif_bunker_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(marksmanmaster,riflemanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(sif_mercenary_poi, "sif_mercenary_poi")
