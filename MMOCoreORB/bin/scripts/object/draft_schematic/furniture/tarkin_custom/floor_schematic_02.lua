object_draft_schematic_furniture_tarkin_custom_floor_schematic_02 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_02:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 2",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/garage_floor_02.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_corellia_marble_d_fallback.iff",
		"object/tangible/tarkin_custom/decorative/shared_corellia_marble_a_fallback.iff",
		"object/tangible/tarkin_custom/decorative/shared_corellia_marble_c_fallback.iff",
		"object/tangible/tarkin_custom/decorative/shared_all_tile_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_corl_concrete_lined_fallback.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_bank_tato_floor.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_02, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_02.iff")
