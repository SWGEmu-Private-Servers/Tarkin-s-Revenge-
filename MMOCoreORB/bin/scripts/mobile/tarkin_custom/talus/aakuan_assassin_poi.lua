aakuan_assassin_poi = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	customName = "an Aa'kuan Assassin",
	socialGroup = "aakuans",
	faction = "aakuans",
	level = 100,
	chanceHit = 0.5,
	damageMin = 270,
	damageMax = 280,
	baseXp = 10188,
	baseHAM = 45000,
	baseHAMmax = 58000,
	armor = 2,
	resists = {55,55,55,55,55,55,55,55,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_follower_trandoshan_female_01.iff",
		"object/mobile/dressed_aakuan_follower_trandoshan_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 800000},
				{group = "aakuan_common", chance = 1000000},
				{group = "armor_attachments", chance = 1150000},
				{group = "clothing_attachments", chance = 1150000},
				{group = "rifles", chance = 1900000},
				{group = "carbines", chance = 1900000},
				{group = "pistols", chance = 1900000},
				{group = "aakuan_rare", chance = 200000}
			},
		    lootChance = 3000000
		}
	},
	weapons = {"aakuan_assassin_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(riflemanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_assassin_poi, "aakuan_assassin_poi")
