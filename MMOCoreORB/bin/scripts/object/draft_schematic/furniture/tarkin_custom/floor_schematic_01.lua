object_draft_schematic_furniture_tarkin_custom_floor_schematic_01 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_01:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 1",

	craftingToolTab = 512, -- (See DraftSchematicObjectTemplate.h)
	complexity = 15,
	size = 2,
	factoryCrateSize = 10,

	xpType = "crafting_structure_general",
	xp = 250,

	assemblySkill = "structure_assembly",
	experimentingSkill = "structure_experimentation",
	customizationSkill = "structure_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_furniture_ingredients_n"},
	ingredientTitleNames = {"paneling"},
	ingredientSlotType = {0},
	resourceTypes = {"ore"},
	resourceQuantities = {100},
	contribution = {100},

	targetTemplate = "object/tangible/tarkin_custom/decorative/echo_base_poi_bunker_rebl_floor.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_ljt_dojofloor.iff",
		"object/tangible/tarkin_custom/decorative/shared_ljt_dojofloor02.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_hotel_ceiling_a1.iff",
		"object/tangible/tarkin_custom/decorative/shared_djt_floorstone_dirt_e.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_medicalfloor_fallback.iff",
		"object/tangible/tarkin_custom/decorative/shared_newbie_ceiling_c.iff",
		"object/tangible/tarkin_custom/decorative/shared_newbie_ceiling_c_black.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_yavn_masstemple_grandhallfloor.iff",
		"object/tangible/tarkin_custom/decorative/shared_thed_marble_graylightslate.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_01, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_01.iff")
