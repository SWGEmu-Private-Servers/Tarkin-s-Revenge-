object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_01 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_01:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 1",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/door_tato_filler_s01.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_door_tato_filler_s02.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_tato_filler_s03.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_tato_interior_s01.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_tato_ply_house_s02.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_tato_shuttleport.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_01, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_01.iff")
