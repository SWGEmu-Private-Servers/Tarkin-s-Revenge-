object_draft_schematic_furniture_tarkin_custom_floor_schematic_06 = object_draft_schematic_furniture_tarkin_custom_shared_floor_schematic_06:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Floor Pack 6",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/bunk_mine_concwall_outer.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_intr_cptl_tatt_floor.iff",
		"object/tangible/tarkin_custom/decorative/shared_nboo_intr_palace_floor.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_hotel_floor_a1.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_hotel_floor.iff",
		"object/tangible/tarkin_custom/decorative/shared_thed_theater_floor_intr_destroyed.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_nboo_marblefloorblue.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_floor_schematic_06, "object/draft_schematic/furniture/tarkin_custom/floor_schematic_06.iff")
