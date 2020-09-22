object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_09 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_09:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 9",

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
	ingredientTitleNames = {"wall_sections"},
	ingredientSlotType = {0},
	resourceTypes = {"ore"},
	resourceQuantities = {100},
	contribution = {100},

	targetTemplate = "object/tangible/tarkin_custom/decorative/rebl_metl_trim.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_rebl_int_wall_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_rebl_metal_paneling_b.iff",
		"object/tangible/tarkin_custom/decorative/shared_poi_bunker_rebl_roomwall.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_b_research.iff",
		"object/tangible/tarkin_custom/decorative/shared_despot_intr_tech_trim.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_spc_npe_hangarwall01.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_spc_npe_hangarwall02.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_09, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_09.iff")
