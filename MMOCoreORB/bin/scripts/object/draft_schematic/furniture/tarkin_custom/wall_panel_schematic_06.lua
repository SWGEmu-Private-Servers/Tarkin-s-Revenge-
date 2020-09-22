object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_06 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_06:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 6",

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

	targetTemplate = "object/tangible/borrie/wall/corl_conc_trim_light.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_dath_prison_wall_a.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_b_blank.iff",
		"object/tangible/borrie/wall/shared_impl_int_wall_b_vents.iff",
		"object/tangible/borrie/wall/shared_corl_sky_interior_wall.iff",
		"object/tangible/borrie/wall/shared_thed_impl_int_wall_a.iff",
		"object/tangible/borrie/wall/shared_bunker_crimelord_wall_b_wspec.iff",
		"object/tangible/borrie/wall/shared_hospital_wall_blue_lined_phong.iff",
		"object/tangible/tarkin_custom/decorative/shared_poi_aurilia_rodian_hut_walltrim.iff",
		"object/tangible/borrie/wall/shared_hospital_wall_details_horiz_phong.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_06, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_06.iff")
