object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_02 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_02:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 2",

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

	targetTemplate = "object/tangible/borrie/wall/ply_corl_accent_c.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_intr_assoc_wall_a.iff",
		"object/tangible/borrie/wall/shared_intr_combat_wall_a.iff",
		"object/tangible/borrie/wall/shared_intr_commerce_wall_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_medicalwall_fallback_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_medicalwall_fallback_b.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_medicalwall_fallback_turquoise.iff",
		"object/tangible/tarkin_custom/decorative/shared_corl_metal_accent_a.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_02, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_02.iff")
