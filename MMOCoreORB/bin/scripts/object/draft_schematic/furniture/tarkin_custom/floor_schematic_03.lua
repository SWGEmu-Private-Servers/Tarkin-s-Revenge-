object_draft_schematic_furniture_tarkin_custom_floor_schematic_03 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_03:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 3",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/corellia_marble_floor_a.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_intr_commerce_floor_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_corellia_concrete_floor_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_corl_floor_a.iff",
		"object/tangible/tarkin_custom/decorative/shared_corl_sky_interior_floor.iff",
		"object/tangible/tarkin_custom/decorative/shared_generic_corellian_floor.iff",
		"object/tangible/tarkin_custom/decorative/shared_thed_tile_floora.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_all_sith_meditation_room_wall.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_03, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_03.iff")
