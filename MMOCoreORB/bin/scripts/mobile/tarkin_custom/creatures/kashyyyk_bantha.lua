kashyyyk_bantha = Creature:new {
	objectName = "@mob/creature_names:ep3_etyyy_bantha_kashyyyk",
	socialGroup = "bantha",
	faction = "",
	level = 40,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 3000,
	baseHAM = 113,
	baseHAMmax = 118,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/kashyyyk_bantha.iff"},
	controlDeviceTemplate = "object/intangible/pet/kashyyyk_bantha.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kashyyyk_bantha, "kashyyyk_bantha")
