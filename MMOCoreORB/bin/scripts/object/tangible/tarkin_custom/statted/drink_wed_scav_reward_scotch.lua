object_tangible_tarkin_custom_statted_drink_wed_scav_reward_scotch = object_tangible_tarkin_custom_statted_shared_drink_wed_scav_reward_scotch:new {
	templateType = CONSUMABLE,

	duration = 1800,
	filling = 70,
	nutrition = 10,

	effectType = 2, -- Duration Based Buff
	eventTypes = {XPAWARDED},

	fillingMin = 70,
	fillingMax = 30,
	flavorMin = 1800,
	flavorMax = 5400,
	nutritionMin = 10,
	nutritionMax = 25,
	quantityMin = 1,
	quantityMax = 8,

	modifiers = { "xp_increase", 0 },

	buffName = "food.xp_increase",
	buffCRC = 0,
	speciesRestriction = "",


	numberExperimentalProperties = {1, 1, 1, 1, 2, 2, 2, 2, 1},
	experimentalProperties = {"XX", "XX", "XX", "XX", "OQ", "PE", "FL", "OQ", "DR", "PE", "DR", "OQ", "XX"},
	experimentalWeights = {1, 1, 1, 1, 1, 2, 2, 1, 1, 3, 3, 1, 1},
	experimentalGroupTitles = {"null", "null", "null", "null", "exp_nutrition", "exp_flavor", "exp_quantity", "exp_filling", "null"},
	experimentalSubGroupTitles = {"null", "null", "hitpoints", "quantity_bonus", "nutrition", "flavor", "quantity", "filling", "stomach"},
	experimentalMin = {0, 0, 1000, 0, 75, 60, 60, 80, 1},
	experimentalMax = {0, 0, 1000, 0, 120, 120, 100, 120, 1},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 4, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_tangible_tarkin_custom_statted_drink_wed_scav_reward_scotch, "object/tangible/tarkin_custom/statted/drink_wed_scav_reward_scotch.iff")

