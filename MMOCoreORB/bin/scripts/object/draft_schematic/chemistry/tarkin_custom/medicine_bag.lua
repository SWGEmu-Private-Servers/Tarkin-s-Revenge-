object_draft_schematic_chemistry_tarkin_custom_medicine_bag = object_draft_schematic_chemistry_tarkin_custom_shared_medicine_bag:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Medicine Bag",

	craftingToolTab = 64, -- (See DraftSchematicObjectTemplate.h)
	complexity = 10,
	size = 4,
	factoryCrateSize = 50,

	xpType = "crafting_medicine_general",
	xp = 200,

	assemblySkill = "medicine_assembly",
	experimentingSkill = "medicine_experimentation",
	customizationSkill = "medicine_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n"},
	ingredientTitleNames = {"body_material", "fiberplast_support"},
	ingredientSlotType = {0, 0},
	resourceTypes = {"hide", "fiberplast"},
	resourceQuantities = {50, 50},
	contribution = {100, 100},

	targetTemplate = "object/tangible/container/medical/medbag_base.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_chemistry_tarkin_custom_medicine_bag, "object/draft_schematic/chemistry/tarkin_custom/medicine_bag.iff")
