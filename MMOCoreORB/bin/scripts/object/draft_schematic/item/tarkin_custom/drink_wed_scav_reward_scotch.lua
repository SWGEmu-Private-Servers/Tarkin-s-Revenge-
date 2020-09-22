object_draft_schematic_item_tarkin_custom_drink_wed_scav_reward_scotch = object_draft_schematic_item_tarkin_custom_shared_drink_wed_scav_reward_scotch:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Doaba Guerfel 17-Year Scotch",

   craftingToolTab = 4, -- (See DraftSchematicObjectTemplate.h)
   complexity = 15, 
   size = 1, 

   xpType = "crafting_food_general", 
   xp = 120, 

   assemblySkill = "food_assembly", 
   experimentingSkill = "food_experimentation", 
   customizationSkill = "", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_food_ingredients_n", "craft_food_ingredients_n", "craft_food_ingredients_n", "craft_food_ingredients_n", "craft_food_ingredients_n", "craft_food_ingredients_n"},
   ingredientTitleNames = {"double_aged_rye", "mash", "distilled_water", "alcohol", "glass", "additive"},
   ingredientSlotType = {0, 0, 0, 1, 2, 1},
   resourceTypes = {"wheat_wild", "cereal", "water", "object/tangible/food/crafted/shared_drink_alcohol.iff", "object/tangible/component/food/base/shared_drink_container_base.iff", "object/tangible/food/crafted/additive/shared_additive_heavy.iff"},
   resourceQuantities = {25, 15, 15, 2, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/tarkin_custom/statted/drink_wed_scav_reward_scotch.iff",

   additionalTemplates = {}

}
ObjectTemplates:addTemplate(object_draft_schematic_item_tarkin_custom_drink_wed_scav_reward_scotch, "object/draft_schematic/item/tarkin_custom/drink_wed_scav_reward_scotch.iff")
