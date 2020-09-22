object_draft_schematic_item_tarkin_custom_centrifuge_use_tray = object_draft_schematic_item_tarkin_custom_shared_centrifuge_use_tray:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Enzyme Refining Tray",

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
   ingredientTitleNames = {"thermal_barrier", "filler_liquid", "hardened_shell"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"gemstone_crystalline", "fuel_petrochem_liquid", "metal"},
   resourceQuantities = {75, 60, 110},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/component/genetic_engineering/centrifuge_use_tray.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_centrifuge_use_tray, "object/draft_schematic/item/tarkin_custom/centrifuge_use_tray.iff")
