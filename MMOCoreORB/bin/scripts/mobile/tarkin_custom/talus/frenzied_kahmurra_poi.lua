frenzied_kahmurra_poi = Creature:new {
	objectName = "@mob/creature_names:frenzied_kahmurra",
	socialGroup = "kahmurra",
	faction = "",
	level = 60,
	chanceHit = 0.4,
	damageMin = 310,
	damageMax = 330,
	baseXp = 4950,
	baseHAM = 21000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {60,50,50,10,25,10,10,-1,40},
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

	templates = {"object/mobile/kahmurra.iff"},
	controlDeviceTemplate = "object/intangible/pet/murra_hue.iff",
	scale = 1.25,
	lootGroups = {
	    {
			groups = {
				{group = "kahmurra_facility_common", chance = 10000000},
			},
			lootChance = 3500000
		}						
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"stunattack",""}
	}
}
 
CreatureTemplates:addCreatureTemplate(frenzied_kahmurra_poi, "frenzied_kahmurra_poi")