de_ig_assassin_droid = Creature:new {
	objectName = "@mob/creature_names:ig_assassin_droid",
	socialGroup = "geonosian",
	faction = "",
	level = 90,
	chanceHit = 1.0,
	damageMin = 280,
	damageMax = 450,
	baseXp = 10461,
	baseHAM = 25700,
	baseHAMmax = 35900,
	armor = 1,
	resists = {25,25,5,5,5,5,5,-1,-1},
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
		"object/mobile/ig_assassin_droid.iff"},
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
			lootChance = 200000
		},
		{
			groups = {
				{group = "droid_cave", chance = 10000000},
			},
			lootChance = 300000
		},
},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack",
}

CreatureTemplates:addCreatureTemplate(de_ig_assassin_droid, "de_ig_assassin_droid")

