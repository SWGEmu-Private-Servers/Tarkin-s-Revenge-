kai_tok = Creature:new {
	objectName = "@mob/creature_names:kai_tok",
	socialGroup = "kai_tok",
	faction = "",
	level = 13,
	chanceHit = 0.29,
	damageMin = 130,
	damageMax = 140,
	baseXp = 609,
	baseHAM = 1200,
	baseHAMmax = 1400,
	armor = 0,
	resists = {0,115,0,0,0,0,0,-1,-1},
	meatType = "meat_avian",
	meatAmount = 125,
	hideType = "hide_leathery",
	hideAmount = 80,
	boneType = "bone_avian",
	boneAmount = 80,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 2,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kai_tok_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	lootGroups = {},
	weapons = {"creature_spit_small_green"},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kai_tok, "kai_tok")