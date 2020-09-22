genetically_enhanced_kahmurra_poi = Creature:new {
	objectName = "@mob/creature_names:genetically_enhanced_kahmurra",
	socialGroup = "kahmurra",
	faction = "",
	level = 50,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 4730,
	baseHAM = 20000,
	baseHAMmax = 24000,
	armor = 0,
	resists = {20,25,20,20,25,60,20,20,-1},
	meatType = "meat_herbivore",
	meatAmount = 50,
	hideType = "hide_bristley",
	hideAmount = 30,
	boneType = "bone_mammal",
	boneAmount = 35,
	milkType = "milk_wild",
	milk = 25,
	tamingChance = 0,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kahmurra.iff"},
	controlDeviceTemplate = "object/intangible/pet/murra_hue.iff",
	scale = 1.4,
	lootGroups = {
	    {
			groups = {
				{group = "kahmurra_facility_common", chance = 10000000},
			},
			lootChance = 2000000
		}						
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(genetically_enhanced_kahmurra_poi, "genetically_enhanced_kahmurra_poi")
