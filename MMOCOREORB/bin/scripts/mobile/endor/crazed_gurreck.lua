crazed_gurreck = Creature:new {
	objectName = "@mob/creature_names:crazed_gurreck",
	socialGroup = "gurreck",
	faction = "",
	level = 25,
	chanceHit = 0.36,
	damageMin = 270,
	damageMax = 280,
	baseXp = 2543,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {15,130,15,15,15,15,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 55,
	hideType = "hide_wooly",
	hideAmount = 20,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurreck_hue.iff"},
	hues = { 0, 1, 2, 3, 7, 12, 17 },
	controlDeviceTemplate = "object/intangible/pet/gurreck_hue.iff",
	scale = 0.95,
	lootGroups = {
	 {
	        groups = {
				{group = "gurreck_trophy", chance = 10000000}
			},
			lootChance = 25000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(crazed_gurreck, "crazed_gurreck")
