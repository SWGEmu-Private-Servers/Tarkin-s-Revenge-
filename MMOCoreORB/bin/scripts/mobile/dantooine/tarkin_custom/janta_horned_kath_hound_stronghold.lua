janta_horned_kath_hound_stronghold = Creature:new {
--	objectName = "@mob/creature_names:baby_bol",
	customName = "Janta Horned Kath Hound",
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
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
	hideType = "hide_wooly",
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

	templates = {"object/mobile/baby_bol.iff"},

	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 0.3,
	lootGroups = {
		{
			groups = {
				{group = "janta_kath_hound", chance = 10000000},
			},
			lootChance = 1666667
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

CreatureTemplates:addCreatureTemplate(janta_horned_kath_hound_stronghold, "janta_horned_kath_hound_stronghold")
