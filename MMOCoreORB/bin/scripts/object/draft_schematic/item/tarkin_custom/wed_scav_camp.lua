object_draft_schematic_item_tarkin_custom_wed_scav_camp = object_draft_schematic_item_tarkin_custom_shared_wed_scav_camp:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Wedding Gazebo Camp",

   craftingToolTab = 524288, -- (See DraftSchematicObjectTemplate.h)
   complexity = 15, 
   size = 1, 

   xpType = "camp", 
   xp = 230, 

   assemblySkill = "general_assembly", 
   experimentingSkill = "general_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n"},
   ingredientTitleNames = {"shelter_canvas", "shelter_structure", "shelter_reinforcement"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"hide", "bone", "metal"},
   resourceQuantities = {50, 35, 30},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/tarkin_custom/decorative/wed_scav_reward_camp.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_wed_scav_camp, "object/draft_schematic/item/tarkin_custom/wed_scav_camp.iff")
