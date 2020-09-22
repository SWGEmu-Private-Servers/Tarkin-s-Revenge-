object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_08 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_08:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 8",

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

	targetTemplate = "object/tangible/borrie/wall/sd_mainwall.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_thm_tatt_jabba_floorplate.iff",
		"object/tangible/tarkin_custom/decorative/shared_atat_house_metal_grate.iff",
		"object/tangible/tarkin_custom/decorative/shared_sd_metal_grate.iff",
		"object/tangible/borrie/wall/shared_corl_bars_a.iff",
		"object/tangible/borrie/wall/shared_corl_vent_a.iff",
		"object/tangible/borrie/wall/shared_blacksun_transport_player_wall1.iff",
		"object/tangible/borrie/wall/shared_blacksun_transport_player_wall2.iff",
		"object/tangible/borrie/wall/shared_blacksun_transport_player_wall3.iff",
		"object/tangible/borrie/wall/shared_blacksun_transport_player_wall4.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_08, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_08.iff")
