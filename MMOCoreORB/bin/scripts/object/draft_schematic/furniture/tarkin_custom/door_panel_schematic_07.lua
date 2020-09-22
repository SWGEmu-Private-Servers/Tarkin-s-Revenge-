object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_07 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_07:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 7",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/poi_all_escape_pod_door.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_thm_npe_hangar_start_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_spc_nebula_orion_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_yavn_ljt_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_yavn_ljt_extdoor.iff",
		"object/tangible/tarkin_custom/decorative/shared_transport_door.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_07, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_07.iff")
