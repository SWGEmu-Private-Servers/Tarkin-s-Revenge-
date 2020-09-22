mutant_mire_marauder = Creature:new {
	objectName = "@mob/creature_names:mutant_mire_marauder",
	socialGroup = "panther",
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
	meatAmount = 150,
	hideType = "hide_leathery",
	hideAmount = 140,
	boneType = "bone_mammal",
	boneAmount = 140,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/minor_sludge_panther.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"creatureareableeding",""}
	}
}

CreatureTemplates:addCreatureTemplate(mutant_mire_marauder, "mutant_mire_marauder")
