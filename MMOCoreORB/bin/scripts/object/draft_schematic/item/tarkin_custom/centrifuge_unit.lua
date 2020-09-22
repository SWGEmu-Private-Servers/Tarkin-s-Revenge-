object_draft_schematic_item_tarkin_custom_centrifuge_unit = object_draft_schematic_item_tarkin_custom_shared_centrifuge_unit:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Enzyme Centrifuge",

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
   ingredientTitleNames = {"aluminum_housing", "fiberplast_support", "electronics_gp_module"},
   ingredientSlotType = {0, 0, 2},
   resourceTypes = {"aluminum", "fiberplast", "object/tangible/component/item/shared_electronics_gp_module.iff"},
   resourceQuantities = {180, 75, 1},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/component/genetic_engineering/centrifuge_unit.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_centrifuge_unit, "object/draft_schematic/item/tarkin_custom/centrifuge_unit.iff")
