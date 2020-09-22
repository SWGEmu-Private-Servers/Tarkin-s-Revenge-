shyyyo_bird = Creature:new {
	objectName = "@mob/creature_names:shyyyo_bird",
	socialGroup = "shyyyo_bird",
	faction = "",
	level = 10,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 292,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/reptilian_flier_hue.iff"},
	hues = { 32 },
	controlDeviceTemplate = "object/intangible/pet/reptilian_flier_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(shyyyo_bird, "shyyyo_bird")
