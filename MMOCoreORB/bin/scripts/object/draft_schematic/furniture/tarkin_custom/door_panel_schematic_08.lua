object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_08 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_08:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 8",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/door_djt_arena_down.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_door_djt_emperor.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_djt_entrance.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_djt_hall_short.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_djt_hall_tall.iff",
		"object/tangible/tarkin_custom/decorative/shared_exar_door_s01.iff",
		"object/tangible/tarkin_custom/decorative/shared_exar_door_s02.iff",
		"object/tangible/tarkin_custom/decorative/shared_exar_door_s03.iff",
		"object/tangible/tarkin_custom/decorative/shared_exar_door_s04.iff",
		"object/tangible/tarkin_custom/decorative/shared_exar_door_s05.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_08, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_08.iff")
