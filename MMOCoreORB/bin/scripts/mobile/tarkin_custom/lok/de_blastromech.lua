de_blastromech = Creature:new {
	objectName = "@mob/creature_names:blastromech",
	socialGroup = "geonosian",
	faction = "",
	level = 90,
	chanceHit = 1.9,
	damageMin = 350,
	damageMax = 450,
	baseXp = 11000,
	baseHAM = 25000,
	baseHAMmax = 55000,
	armor = 1,
	resists = {35,55,95,55,95,20,35,65,-1},
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

	templates = {
		"object/mobile/blastromech.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nyms_common", chance = 5000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "droid_cave_common", chance = 3000000}
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
				{group = "droid_cave", chance = 10000000},
			},
			lootChance = 300000
		},
},
	conversationTemplate = "",
	defaultAttack = "creaturerangedattack",
	defaultWeapon = "object/weapon/ranged/droid/droid_astromech_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(de_blastromech, "de_blastromech")

