junk_shop_owner = Creature:new {
	objectName = "@mob/creature_names:junk_shop_owner",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "",
	faction = "",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_desperado_bith_male_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "junkShopOwnerConvoTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(junk_shop_owner, "junk_shop_owner")
