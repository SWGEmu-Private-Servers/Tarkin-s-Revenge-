naboo_dread_pirate_bunker = Creature:new {
	objectName = "@mob/creature_names:naboo_dread_pirate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "naboo_pirate",
	faction = "naboo_pirate",
	level = 130,
	chanceHit = 1.8,
	damageMin = 500,
	damageMax = 700,
	baseXp = 25097,
	baseHAM = 80000,
	baseHAMmax = 90000,
	armor = 2,
	resists = {55,65,70,30,70,5,20,55,-1},
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

	templates = { "object/mobile/dressed_criminal_pirate_human_male_01.iff" },

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
			lootChance = 7000000
		},
		{	
			groups = {
				{group = "pirate_bunker_rare", chance = 10000000}
			},
			lootChance = 1800000

		},
		{	
			groups = {
				{group = "deed_voucher", chance = 6000000},
				{group = "smuggled_bantha_ivory", chance = 2000000},
				{group = "smuggled_bantha_ivory_projectile", chance = 2000000}
			},
			lootChance = 500000

		},
	},
	weapons = {"pirate_bunker_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(naboo_dread_pirate_bunker, "naboo_dread_pirate_bunker")
