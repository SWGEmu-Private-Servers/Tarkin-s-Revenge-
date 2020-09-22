object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_04 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_04:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 4",

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

	targetTemplate = "object/tangible/borrie/wall/cave_ice_wall.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_cave_rock_damp_wall.iff",
		"object/tangible/borrie/wall/shared_cave_rock_dry_wall.iff",
		"object/tangible/tarkin_custom/decorative/shared_djt_wallstone_rectangles.iff",
		"object/tangible/tarkin_custom/decorative/shared_djt_wallstone_streaked_dirt_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_djt_wallstone_streaked_dirt_b.iff",
		"object/tangible/tarkin_custom/decorative/shared_djt_wallstone_tx_b.iff",
		"object/tangible/borrie/wall/shared_exarkun_intr_wall_a.iff",
		"object/tangible/borrie/wall/shared_exarkun_intr_wall_c.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_04, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_04.iff")
