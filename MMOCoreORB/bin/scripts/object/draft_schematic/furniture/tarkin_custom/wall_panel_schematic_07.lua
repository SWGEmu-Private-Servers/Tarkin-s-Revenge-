object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_07 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_07:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 7",

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

	targetTemplate = "object/tangible/borrie/wall/asteroid_hutt_wall02.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_asteroid_hutt_wall04.iff",
		"object/tangible/borrie/wall/shared_asteroid_techwall03.iff",
		"object/tangible/borrie/wall/shared_imperial_gunboat_int_wall_a_phong.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_b_blank_grunge.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_b_grunge.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_d_grunge_phong.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_e_grunge_phong.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_f_grunge_phong.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_07, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_07.iff")
