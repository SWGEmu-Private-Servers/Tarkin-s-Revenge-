object_draft_schematic_furniture_tarkin_custom_floor_schematic_07 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_07:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 7",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/thm_spc_npe_floor02.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_thm_spc_npe_floor03.iff",
		"object/tangible/tarkin_custom/decorative/shared_corv_gray_metal_grate.iff",
		"object/tangible/tarkin_custom/decorative/shared_sd_gray_metal_grate.iff",
		"object/tangible/tarkin_custom/decorative/shared_kitchen_tile.iff",
		"object/tangible/tarkin_custom/decorative/shared_herringbone_parquet_light.iff",
		"object/tangible/tarkin_custom/decorative/shared_herringbone_parquet_dark.iff",
		"object/tangible/tarkin_custom/decorative/shared_wood_plank_tile.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_07, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_07.iff")
