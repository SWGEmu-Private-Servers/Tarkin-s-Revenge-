object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_10 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_10:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 10",

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

	targetTemplate = "object/tangible/borrie/wall/star_destroyer_lightswall.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_star_destroyer_wall4.iff",
		"object/tangible/tarkin_custom/decorative/shared_sd_cmd_deck_console_front.iff",
		"object/tangible/borrie/wall/shared_asteroid_light_wall01.iff",
		"object/tangible/borrie/wall/shared_nboo_flow_crmsn_clmn.iff",
		"object/tangible/borrie/wall/shared_nboo_flow_crmsn_sparse.iff",
		"object/tangible/borrie/wall/shared_thm_tatt_grate_s01.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_10, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_10.iff")
