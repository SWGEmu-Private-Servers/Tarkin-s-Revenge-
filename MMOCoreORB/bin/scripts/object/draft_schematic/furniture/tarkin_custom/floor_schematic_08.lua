object_draft_schematic_furniture_tarkin_custom_floor_schematic_08 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_08:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 8",

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
	ingredientTitleNames = {"paneling"},
	ingredientSlotType = {0},
	resourceTypes = {"ore"},
	resourceQuantities = {100},
	contribution = {100},

	targetTemplate = "object/tangible/tarkin_custom/decorative/carpet_sand.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_carpet_blue.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_brown.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_green.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_orange.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_pink.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_purple.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_red.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_teal.iff",
		"object/tangible/tarkin_custom/decorative/shared_carpet_black.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_08, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_08.iff")
