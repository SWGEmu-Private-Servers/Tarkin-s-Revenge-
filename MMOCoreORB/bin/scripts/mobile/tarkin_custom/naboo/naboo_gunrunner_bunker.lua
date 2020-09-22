naboo_gunrunner_bunker = Creature:new {
	objectName = "@mob/creature_names:naboo_gunrunner",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "naboo_pirate",
	faction = "naboo_pirate",
	level = 80,
	chanceHit = 0.8,
	damageMin = 105,
	damageMax = 120,
	baseXp = 8100,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 1,
	resists = {30,45,10,50,40,10,50,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = NONE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_naboo_gunrunner.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pirate_bunker_common", chance = 1600000},
				{group = "generic_tech", chance = 2000000},
				{group = "generic_consoles", chance = 1600000},
				{group = "loot_kit_parts", chance = 1600000},
				{group = "printer_parts", chance = 1600000},
				{group = "weapons_all", chance = 1600000}
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
				{group = "pirate_bunker_rare", chance = 10000000}
			},
			lootChance = 100000
		},
		{	
			groups = {
				{group = "deed_voucher", chance = 10000000}
			},
			lootChance = 25000

		},
	},
	weapons = {"pirate_bunker_carbines"},
	reactionStf = "@npc_reaction/townperson",
	attacks = merge(carbineermaster,fencermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(naboo_gunrunner_bunker, "naboo_gunrunner_bunker")
