janta_loreweaver_stronghold = Creature:new {
	objectName = "@mob/creature_names:janta_loreweaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 110,
	chanceHit = 1,
	damageMin = 500,
	damageMax = 800,
	baseXp = 15174,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 1,
	resists = {10,45,-1,10,10,70,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "janta_common", chance = 3000000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "clothing_attachments", chance = 1050000},
				{group = "armor_attachments", chance = 1050000},
				{group = "binayre_common", chance = 1500000},
				{group = "forage_medical_component", chance = 1500000},
				{group = "janta_rare", chance = 200000},
				{group = "forage_rare", chance = 200000}
			},
			lootChance = 7500000
		}	
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster)
}

CreatureTemplates:addCreatureTemplate(janta_loreweaver_stronghold, "janta_loreweaver_stronghold")
