rabid_mutant_kahmurra_poi = Creature:new {
	objectName = "@mob/creature_names:rabid_mutant_kahmurra",
	socialGroup = "kahmurra",
	faction = "",
	level = 80,
	chanceHit = 0.75,
	damageMin = 345,
	damageMax = 450,
	baseXp = 5630,
	baseHAM = 30000,
	baseHAMmax = 32000,
	armor = 1,
	resists = {50,50,60,10,40,50,20,0,-1},
	meatType = "meat_herbivore",
	meatAmount = 50,
	hideType = "hide_bristley",
	hideAmount = 30,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mutated_kahmurra.iff"},
	controlDeviceTemplate = "object/intangible/pet/murra_hue.iff",
	scale = 1.3,
	lootGroups = {
	    {
			groups = {
				{group = "kahmurra_facility_common", chance = 10000000},
			},
			lootChance = 4500000
		}						
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(rabid_mutant_kahmurra_poi, "rabid_mutant_kahmurra_poi")