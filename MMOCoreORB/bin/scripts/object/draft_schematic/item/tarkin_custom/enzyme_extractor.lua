object_draft_schematic_item_tarkin_custom_enzyme_extractor = object_draft_schematic_item_tarkin_custom_shared_enzyme_extractor:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Enzyme Extractor",

   craftingToolTab = 8192, -- (See DraftSchematicObjectTemplate.h)
   complexity = 18, 
   size = 1, 

   xpType = "crafting_bio_engineer_creature", 
   xp = 250, 

   assemblySkill = "bio_engineer_assembly", 
   experimentingSkill = "bio_engineer_experimentation", 
   customizationSkill = "bio_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_chemical_ingredients_n", "craft_chemical_ingredients_n"},
   ingredientTitleNames = {"organic_element", "inorganic_element"},
   ingredientSlotType = {0, 0},
   resourceTypes = {"organic", "steel"},
   resourceQuantities = {40, 60},
   contribution = {100, 100},


   targetTemplate = "object/tangible/component/genetic_engineering/enzyme_extraction_unit.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_enzyme_extractor, "object/draft_schematic/item/tarkin_custom/enzyme_extractor.iff")
