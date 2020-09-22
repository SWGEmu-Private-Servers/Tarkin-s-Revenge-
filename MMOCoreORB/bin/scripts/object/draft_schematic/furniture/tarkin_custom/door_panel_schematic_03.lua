object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_03 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_03:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 3",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/door_nboo_cantina_s01.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_door_nboo_filler_s01.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_nboo_filler_s02.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_nboo_filler_s04.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_nboo_filler_s05.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_nboo_house_door_s01.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_nboo_house_door_s02.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_03, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_03.iff")
