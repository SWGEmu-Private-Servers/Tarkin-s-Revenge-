object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_01 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_01:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 1",

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

	targetTemplate = "object/tangible/borrie/wall/tatt_stco_player_wall1.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_tatt_stco_player_wall2.iff",
		"object/tangible/borrie/wall/shared_ply_corl_ceiling_a.iff",
		"object/tangible/borrie/wall/shared_tatt_stco_player_wall_ribbed.iff",
		"object/tangible/borrie/wall/shared_intr_cptl_tatt_wall_a1.iff",
		"object/tangible/borrie/wall/shared_intr_cptl_tatt_wall_a2.iff",
		"object/tangible/borrie/wall/shared_intr_cptl_tatt_wall_trim_a1.iff",
		"object/tangible/borrie/wall/shared_thm_tatt_debris_rust.iff",
		"object/tangible/borrie/wall/shared_thm_tatt_tent.iff",
		"object/tangible/borrie/wall/shared_thm_tatt_mtl_rustb.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_01, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_01.iff")
