kimogila_hatchling_cave = Creature:new {
	objectName = "@mob/creature_names:kimogila_hatchling",
	socialGroup = "kimogila",
	faction = "",
	level = 50,
	chanceHit = 0.66,
	damageMin = 420,
	damageMax = 440,
	baseXp = 4012,
	baseHAM = 35200,
	baseHAMmax = 39000,
	armor = 1,
	resists = {10,10,10,155,10,10,200,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 700,
	hideType = "hide_leathery",
	hideAmount = 625,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kimogila_hatchling.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 0.5,
	lootGroups = {
	 	{
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 1440000
		},
		 {
	        groups = {
				{group = "kimo_cave_rare", chance = 10000000}
			},
			lootChance = 100000
		}
	},


	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kimogila_hatchling_cave, "kimogila_hatchling_cave")
