giant_kimogila_cave = Creature:new {
	objectName = "@mob/creature_names:giant_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 139,
	chanceHit = 5.5,
	damageMin = 875,
	damageMax = 1460,
	baseXp = 13178,
	baseHAM = 80000,
	baseHAMmax = 88000,
	armor = 2,
	resists = {135,180,20,180,20,20,200,20,-1},
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

	templates = {"object/mobile/giant_kimogila.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.15,
	lootGroups = {
	    {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3780000
		},
		 {
	        groups = {
				{group = "kimo_cave_rare", chance = 10000000}
			},
			lootChance = 1500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_kimogila_cave, "giant_kimogila_cave")
