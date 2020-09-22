object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_09 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_09:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 9",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/door_star_destroyer_s01.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_door_star_destroyer_s03.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_star_destroyer_s05.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_dath_nightsister_s01.iff",
		"object/tangible/tarkin_custom/decorative/shared_door_dath_nightsister_s02.iff",
		"object/tangible/tarkin_custom/decorative/shared_poi_all_bunker_cave_s01_exterior_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_spc_asteroid_bunker_energy_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_wall_modular_restraining_wall_door.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_09, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_09.iff")
