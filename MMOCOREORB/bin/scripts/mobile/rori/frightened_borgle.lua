frightened_borgle = Creature:new {
	objectName = "@mob/creature_names:frightened_borgle",
	socialGroup = "borgle",
	faction = "",
	level = 8,
	chanceHit = 0.27,
	damageMin = 80,
	damageMax = 90,
	baseXp = 187,
	baseHAM = 405,
	baseHAMmax = 495,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 20,
	hideType = "hide_leathery",
	hideAmount = 20,
	boneType = "bone_avian",
	boneAmount = 15,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/borgle_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/borgle_hue.iff",
	scale = 0.95,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(frightened_borgle, "frightened_borgle")
