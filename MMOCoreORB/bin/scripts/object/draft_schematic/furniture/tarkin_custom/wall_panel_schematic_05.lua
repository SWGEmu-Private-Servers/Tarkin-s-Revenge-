object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_05 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_05:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 5",

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

	targetTemplate = "object/tangible/borrie/wall/impl_int_wall_metal.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_impl_int_wall_metal_grunge.iff",
		"object/tangible/tarkin_custom/decorative/shared_sd_metal_smk_horiz.iff",
		"object/tangible/borrie/wall/shared_corl_metal_scummy_deco.iff",
		"object/tangible/borrie/wall/shared_despot_ext_walls_a1.iff",
		"object/tangible/borrie/wall/shared_sd_reactor_wall.iff",
		"object/tangible/borrie/wall/shared_asteroid_hutt_wall01.iff",
		"object/tangible/borrie/wall/shared_asteroid_hutt_wall05.iff",
		"object/tangible/tarkin_custom/decorative/shared_item_miniature_cloud_city_house_wall_ext.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_05, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_05.iff")
