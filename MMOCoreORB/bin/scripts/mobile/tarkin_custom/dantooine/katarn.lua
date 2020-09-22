katarn = Creature:new {
	customName = "a katarn",
	socialGroup = "dantari_raiders",
	faction = "dantari_raiders",
	level = 150,
	chanceHit = 2.0,
	damageMin = 400,
	damageMax = 600,
	baseXp = 19000,
	baseHAM = 44810,
	baseHAMmax = 57990,
	armor = 2,
	resists = {50,20,50,20,70,5,25,50,-1},
	meatType = "meat_carnivore",
	meatAmount = 400,
	hideType = "hide_leathery",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 200,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/katarn.iff"},

	lootGroups = {
		{
			groups = {
				{group = "dantari_poi_katarn", chance = 10000000},
			},
			lootChance = 2500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"mediumpoison",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(katarn, "katarn")
