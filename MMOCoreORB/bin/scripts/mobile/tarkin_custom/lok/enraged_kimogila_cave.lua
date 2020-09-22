enraged_kimogila_cave = Creature:new {
	objectName = "@mob/creature_names:enraged_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 135,
	chanceHit = 4.75,
	damageMin = 920,
	damageMax = 1550,
	baseXp = 12801,
	baseHAM = 72000,
	baseHAMmax = 77000,
	armor = 2,
	resists = {145,170,145,170,145,140,200,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kimogila_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 0.9,
	lootGroups = {
		 {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3700000
		},
		 {
	        groups = {
				{group = "kimo_cave_rare", chance = 10000000}
			},
			lootChance = 1300000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_kimogila_cave, "enraged_kimogila_cave")
