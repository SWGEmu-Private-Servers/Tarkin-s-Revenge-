meek_avenging_squall = Creature:new {
	objectName = "@mob/creature_names:frail_squall_meek_avenger",
	socialGroup = "squall",
	faction = "",
	level = 6,
	chanceHit = 0.25,
	damageMin = 50,
	damageMax = 55,
	baseXp = 113,
	baseHAM = 180,
	baseHAMmax = 220,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_wild",
	meatAmount = 25,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 25,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/squall_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 0.95,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(meek_avenging_squall, "meek_avenging_squall")
