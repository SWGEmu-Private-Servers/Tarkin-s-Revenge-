object_tangible_tarkin_custom_decorative_wed_scav_reward_camp = object_tangible_tarkin_custom_decorative_shared_wed_scav_reward_camp:new {
	templateType = CAMPKIT,
	objectMenuComponent = "CampKitMenuComponent",
	spawnObjectTemplate = "object/building/poi/tarkin_custom/wed_scav_reward_camp.iff",

	numberExperimentalProperties = {1, 1, 1, 1},
	experimentalProperties = {"XX", "XX", "XX", "XX"},
	experimentalWeights = {1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "null", "null"},
	experimentalSubGroupTitles = {"null", "null", "hitpoints", "quality"},
	experimentalMin = {0, 0, 1000, 1},
	experimentalMax = {0, 0, 1000, 100},
	experimentalPrecision = {0, 0, 0, 0},
	experimentalCombineType = {0, 0, 4, 1},
}

ObjectTemplates:addTemplate(object_tangible_tarkin_custom_decorative_wed_scav_reward_camp, "object/tangible/tarkin_custom/decorative/wed_scav_reward_camp.iff")
