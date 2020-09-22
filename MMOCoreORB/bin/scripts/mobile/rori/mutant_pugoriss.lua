mutant_pugoriss = Creature:new {
	objectName = "@mob/creature_names:mutant_pugoriss",
	socialGroup = "pugoriss",
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
	meatAmount = 375,
	hideType = "hide_leathery",
	hideAmount = 425,
	boneType = "bone_mammal",
	boneAmount = 375,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/pugoriss_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mutant_pugoriss, "mutant_pugoriss")
