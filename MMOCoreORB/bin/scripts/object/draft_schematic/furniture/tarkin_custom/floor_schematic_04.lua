object_draft_schematic_furniture_tarkin_custom_floor_schematic_04 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_04:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 4",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/hospital_floor_gray.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_impl_floor_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_echo_base_rebl_floor_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_hospital_floor_blue.iff",
		"object/tangible/tarkin_custom/decorative/shared_impl_floor_a_edged_grunge.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_tech_floor_c.iff",
		"object/tangible/tarkin_custom/decorative/shared_thed_floor_destroyed.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_04, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_04.iff")
