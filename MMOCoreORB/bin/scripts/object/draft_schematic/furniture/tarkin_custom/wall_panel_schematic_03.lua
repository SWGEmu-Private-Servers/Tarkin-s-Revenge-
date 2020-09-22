object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_03 = object_draft_schematic_furniture_tarkin_custom_shared_wall_panel_schematic_03:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Wall Panel Pack 3",

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

	targetTemplate = "object/tangible/borrie/wall/ply_nboo_marblewhite.iff",

	additionalTemplates = {
		"object/tangible/borrie/wall/shared_ply_nboo_marblewalltrim.iff",
		"object/tangible/borrie/wall/shared_nboo_intr_throne_marble_red.iff",
		"object/tangible/borrie/wall/shared_nboo_intr_palace_marble_darkgrey.iff",
		"object/tangible/tarkin_custom/decorative/shared_intr_hotelwall_agreen.iff",		
		"object/tangible/borrie/wall/shared_intr_commerce_wall_b.iff",	
		"object/tangible/borrie/wall/shared_nboo_intr_throne_marble_reddeco.iff",
		"object/tangible/borrie/wall/shared_ply_nboo_carpetred.iff",
		"object/tangible/tarkin_custom/decorative/shared_corv_whitewall_base.iff",
		"object/tangible/tarkin_custom/decorative/shared_echo_base_poi_bunker_rebl_roomwall.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_wall_panel_schematic_03, "object/draft_schematic/furniture/tarkin_custom/wall_panel_schematic_03.iff")
