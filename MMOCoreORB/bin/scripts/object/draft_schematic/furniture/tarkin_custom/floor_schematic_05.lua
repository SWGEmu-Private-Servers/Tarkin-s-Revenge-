object_draft_schematic_furniture_tarkin_custom_floor_schematic_05 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_05:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 5",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/corl_metl_cantina_floor.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_intr_combat_floor_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_blacksun_transport_player_floor.iff",
		"object/tangible/tarkin_custom/decorative/shared_thm_spc_npe_floorramp.iff",
		"object/tangible/tarkin_custom/decorative/shared_jabbas_sail_barge_dirt_metalplate.iff",
		"object/tangible/tarkin_custom/decorative/shared_exarkun_intr_floor.iff",
		"object/tangible/tarkin_custom/decorative/shared_jedi_floor_fallback.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_05, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_05.iff")
