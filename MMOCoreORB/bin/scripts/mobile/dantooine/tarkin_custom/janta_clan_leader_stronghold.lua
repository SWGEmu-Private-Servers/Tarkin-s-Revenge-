janta_clan_leader_stronghold = Creature:new {
	objectName = "@mob/creature_names:janta_clan_leader",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 250,
	chanceHit = 200,
	damageMin = 200,
	damageMax = 950,
	baseXp = 28549,
	baseHAM = 191000,
	baseHAMmax = 271000,
	armor = 3,
	resists = {50,50,-1,40,30,100,30,-1,-1},
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

	templates = {"object/mobile/dantari_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "janta_common", chance = 4000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "binayre_common", chance = 1550000},
				{group = "forage_medical_component", chance = 1000000},
				{group = "janta_rare", chance = 250000},
				{group = "forage_rare", chance = 200000}
			},
			lootChance = 7500000
		}	
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster)
}

CreatureTemplates:addCreatureTemplate(janta_clan_leader_stronghold, "janta_clan_leader_stronghold")
