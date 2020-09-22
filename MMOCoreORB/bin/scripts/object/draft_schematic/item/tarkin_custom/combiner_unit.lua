object_draft_schematic_item_tarkin_custom_combiner_unit = object_draft_schematic_item_tarkin_custom_shared_combiner_unit:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Enzyme Re-Processor",

   craftingToolTab = 8192, -- (See DraftSchematicObjectTemplate.h)
   complexity = 26, 
   size = 1, 

   xpType = "crafting_bio_engineer_creature", 
   xp = 250, 

   assemblySkill = "bio_engineer_assembly", 
   experimentingSkill = "bio_engineer_experimentation", 
   customizationSkill = "bio_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"aluminum_housing", "fiberplast_support", "electronic_control_unit"},
   ingredientSlotType = {0, 0, 2},
   resourceTypes = {"aluminum", "fiberplast", "object/tangible/component/item/shared_electronic_control_unit.iff"},
   resourceQuantities = {180, 75, 1},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/component/genetic_engineering/combiner_unit.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_combiner_unit, "object/draft_schematic/item/tarkin_custom/combiner_unit.iff")
