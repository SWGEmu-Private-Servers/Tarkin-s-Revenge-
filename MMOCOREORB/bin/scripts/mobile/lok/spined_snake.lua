spined_snake = Creature:new {
	objectName = "@mob/creature_names:spined_snake",
	socialGroup = "spine_snake",
	faction = "",
	level = 17,
	chanceHit = 0.32,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1257,
	baseHAM = 3500,
	baseHAMmax = 4300,
	armor = 0,
	resists = {5,5,5,5,5,5,5,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 15,
	boneType = "bone_mammal",
	boneAmount = 15,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/spined_snake_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/spined_snake_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"mediumpoison",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(spined_snake, "spined_snake")
