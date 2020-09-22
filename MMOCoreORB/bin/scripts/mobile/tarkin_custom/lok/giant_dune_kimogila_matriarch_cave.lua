giant_dune_kimogila_matriarch_cave = Creature:new {
	objectName = "@mob/creature_names:giant_dune_kimogila",
	customName = "a giant dune kimogila matriarch",
	socialGroup = "kimogila",
	faction = "",
	level = 153,
	chanceHit = 8.5,
	damageMin = 895,
	damageMax = 1500,
	baseXp = 28504,
	baseHAM = 88000,
	baseHAMmax = 110000,
	armor = 3,
	resists = {165,165,165,165,145,165,165,165,-1},
	meatType = "meat_carnivore",
	meatAmount = 1200,
	hideType = "hide_leathery",
	hideAmount = 1200,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.7,
	lootGroups = {
	 	{
	        groups = {
				{group = "kimo_cave_rare", chance = 10000000},
			},
			lootChance = 6666667
		},
		 {
	        groups = {
				{group = "giant_dune_kimo_common", chance = 10000000}
			},
			lootChance = 3400000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_dune_kimogila_matriarch_cave, "giant_dune_kimogila_matriarch_cave")
