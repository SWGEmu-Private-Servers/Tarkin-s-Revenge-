object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_04 = object_draft_schematic_furniture_tarkin_custom_shared_door_panel_schematic_04:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Door Panel Pack 4",

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

	targetTemplate = "object/tangible/tarkin_custom/decorative/ply_all_bespin_house_door.iff",

	additionalTemplates = {
		"object/tangible/tarkin_custom/decorative/shared_ply_all_bespin_house_door2.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_all_commando_bunker_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_all_rebel_spire_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_all_sandcrawler_house_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_all_sith_meditation_room_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_all_swimming_pool_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_yt1300_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_poi_all_diner_door.iff",
		"object/tangible/tarkin_custom/decorative/shared_ply_jedi_meditation_room_door.iff"
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_door_panel_schematic_04, "object/draft_schematic/furniture/tarkin_custom/door_panel_schematic_04.iff")
