mutant_bol = Creature:new {
	objectName = "@mob/creature_names:mutant_bol",
	socialGroup = "bol",
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
	meatType = "meat_reptilian",
	meatAmount = 180,
	hideType = "hide_leathery",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 180,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/seething_bol_crusher.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63 },
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mutant_bol, "mutant_bol")
