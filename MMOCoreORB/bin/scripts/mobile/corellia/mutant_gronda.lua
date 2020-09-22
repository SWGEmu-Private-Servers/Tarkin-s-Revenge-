mutant_gronda = Creature:new {
	objectName = "@mob/creature_names:mutant_gronda",
	socialGroup = "gronda",
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
	meatType = "meat_carnivore",
	meatAmount = 600,
	hideType = "hide_leathery",
	hideAmount = 475,
	boneType = "bone_mammal",
	boneAmount = 435,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gronda_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mutant_gronda, "mutant_gronda")
