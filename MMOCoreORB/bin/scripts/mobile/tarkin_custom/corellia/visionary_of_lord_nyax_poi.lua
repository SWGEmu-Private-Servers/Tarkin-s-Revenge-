visionary_of_lord_nyax_poi = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_visionary",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 120,
	chanceHit = 1,
	damageMin = 280,
	damageMax = 500,
	baseXp = 10188,
	baseHAM = 45300,
	baseHAMmax = 48100,
	armor = 1,
	resists = {30,45,10,50,40,10,50,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_patron_chiss_f_01.iff",
		"object/mobile/dressed_patron_chiss_f_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "melee_two_handed", chance = 1500000},
				{group = "color_crystals", chance = 2000000},
				{group = "printer_parts", chance = 1500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
   		            	{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 300000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "nyax_minions", chance = 4000000},
				{group = "theme_park_loot_rebel_pirate_holocron", chance = 1000000}
			},
			lootChance = 300000
		},
	},
	weapons = {"aakuan_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = {
		{"creatureareaknockdown","knockdownChance=50"},
		{"creatureareacombo",""},
		{"dizzyattack","dizzyChance=50"},
		{"blindattack","blindChance=50"},
 	}
}

CreatureTemplates:addCreatureTemplate(visionary_of_lord_nyax_poi, "visionary_of_lord_nyax_poi")
