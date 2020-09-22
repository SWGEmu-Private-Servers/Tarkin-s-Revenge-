object_draft_schematic_item_tarkin_custom_item_incubator_station = object_draft_schematic_item_tarkin_custom_shared_item_incubator_station:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Incubator Station",

   craftingToolTab = 512, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 5, 

   xpType = "crafting_structure_general", 
   xp = 900, 

   assemblySkill = "general_assembly", 
   experimentingSkill = "general_experimentation", 
   customizationSkill = "clothing_customization",

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"assembly_enclosure", "thermal_shielding", "electronic_control_unit", "micro_sensor_suite", "storage_compartment"},
   ingredientSlotType = {0, 0, 4, 4, 2},
   resourceTypes = {"metal", "mineral", "object/tangible/component/item/shared_electronic_control_unit.iff", "object/tangible/component/item/shared_micro_sensor_suite.iff", "object/tangible/component/droid/shared_droid_storage_compartment.iff"},
   resourceQuantities = {400, 50, 2, 2, 5},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/crafting/station/incubator_station.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_item_incubator_station, "object/draft_schematic/item/tarkin_custom/item_incubator_station.iff")
