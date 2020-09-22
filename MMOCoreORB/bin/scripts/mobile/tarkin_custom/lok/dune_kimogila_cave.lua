dune_kimogila_cave = Creature:new {
	objectName = "@mob/creature_names:dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 123,
	chanceHit = 4,
	damageMin = 785,
	damageMax = 1280,
	baseXp = 11671,
	baseHAM = 70000,
	baseHAMmax = 76000,
	armor = 2,
	resists = {140,165,15,200,-1,15,200,-1,-1},
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
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	lootGroups = {
	 	{
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3460000
		},
		 {
	        groups = {
				{group = "kimo_cave_rare", chance = 10000000}
			},
			lootChance = 1200000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(dune_kimogila_cave, "dune_kimogila_cave")
