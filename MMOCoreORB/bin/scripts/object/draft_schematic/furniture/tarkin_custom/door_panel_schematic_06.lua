object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_06 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_06:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 6",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/door_star_destroyer_s02.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_impl_door_s01.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_star_destroyer_s04.iff",
		"object/tangible/tarkin_custom/decorative/shared_poi_aurilia_rodian_hut_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_echo_base_door_lg.iff",
		"object/tangible/tarkin_custom/decorative/shared_echo_base_door_sm.iff",
		"object/tangible/tarkin_custom/decorative/shared_echo_base_hangar_door.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_06, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_06.iff")
