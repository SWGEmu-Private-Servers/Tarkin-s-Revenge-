insane_miner_poi = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	customName = "an Insane Miner",
	socialGroup = "self",
	faction = "",
	level = 60,
	chanceHit = 0.6,
	damageMin = 250,
	damageMax = 300,
	baseXp = 8000,
	baseHAM = 21000,
	baseHAMmax = 24000,
	armor = 0,
	resists = {10,25,10,-1,25,60,5,5,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_kobola_miner_human_male_01.iff",
		"object/mobile/dressed_kobola_miner_human_female_01.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2000000},
				{group = "wearables_common", chance = 2000000},
				{group = "pistols", chance = 2000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000}
			}
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(insane_miner_poi, "insane_miner_poi")
