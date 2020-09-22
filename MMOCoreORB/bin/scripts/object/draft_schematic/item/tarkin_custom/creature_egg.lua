object_draft_schematic_item_tarkin_custom_creature_egg = object_draft_schematic_item_tarkin_custom_shared_creature_egg:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Creature Egg",

	craftingToolTab = 8192, -- (See DraftSchematicObjectTemplate.h)
	complexity = 18, 
	size = 1, 
	factoryCrateSize = 0,

	xpType = "crafting_bio_engineer_creature", 
	xp = 100, 
	lab = INCUBATION_LAB,
	assemblySkill = "bio_engineer_assembly", 
	experimentingSkill = "bio_engineer_experimentation", 
	customizationSkill = "bio_customization", 

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n"},
	ingredientTitleNames = {"phase_1_hydrolase", "phase_1_isomerase", "phase_1_lyase", "phase_2_hydrolase", "phase_2_isomerase", "phase_2_lyase", "phase_3_hydrolase", "phase_3_isomerase", "phase_3_lyase"},
	ingredientSlotType = {2, 2, 2, 2, 2, 2, 2, 2, 2},
	resourceTypes = {"object/tangible/loot/beast/shared_enzyme_3.iff", "object/tangible/loot/beast/shared_enzyme_1.iff", "object/tangible/loot/beast/shared_enzyme_2.iff", "object/tangible/loot/beast/shared_enzyme_3.iff", "object/tangible/loot/beast/shared_enzyme_1.iff", "object/tangible/loot/beast/shared_enzyme_2.iff", "object/tangible/loot/beast/shared_enzyme_3.iff", "object/tangible/loot/beast/shared_enzyme_1.iff", "object/tangible/loot/beast/shared_enzyme_2.iff"},
	resourceQuantities = {1, 1, 1, 1, 1, 1, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/tarkin_custom/statted/creature_egg.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_creature_egg, "object/draft_schematic/item/tarkin_custom/creature_egg.iff")
