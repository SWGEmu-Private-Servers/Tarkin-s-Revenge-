mutant_angler = Creature:new {
	objectName = "@mob/creature_names:mutant_angler",
	socialGroup = "angler",
	faction = "",
	level = 75,
	chanceHit = 0.7,
	damageMin = 495,
	damageMax = 700,
	baseXp = 7207,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {145,160,25,200,200,200,25,25,-1},
	meatType = "meat_insect",
	meatAmount = 15,
	hideType = "hide_scaley",
	hideAmount = 15,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_angler.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.25,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"milddisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(mutant_angler, "mutant_angler")
