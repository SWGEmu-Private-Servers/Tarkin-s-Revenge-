object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_05 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_05:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 5",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/door_blockade_runner_s01.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_door_bunker_rebel.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_newbiehall.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_tato_despot_s01.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_tato_despot_s02.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_tato_despot_s03.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_05, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_05.iff")
