object_draft_schematic_furniture_tarkin_custom_aurebesh_peth = object_draft_schematic_furniture_tarkin_custom_shared_aurebesh_peth:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Peth",

   craftingToolTab = 512, -- (See DraftSchematicObjectTemplate.h)
   complexity = 12, 
   size = 1, 

   xpType = "crafting_general", 
   xp = 70, 

   factoryCrateSize = 0,

   assemblySkill = "general_assembly", 
   experimentingSkill = "general_experimentation", 
   customizationSkill = "general_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_furniture_ingredients_n", "craft_furniture_ingredients_n"},
   ingredientTitleNames = {"frame", "sealant"},
   ingredientSlotType = {0, 0},
   resourceTypes = {"metal", "metal"},
   resourceQuantities = {10, 25},
   contribution = {100, 100},


   targetTemplate = "object/tangible/loot/creature_loot/collections/aurebesh_tile_peth.iff",

   additionalTemplates = {
			"object/tangible/loot/creature_loot/collections/shared_aurebesh_tile_qek.iff",
			"object/tangible/loot/creature_loot/collections/shared_aurebesh_tile_resh.iff",
			"object/tangible/loot/creature_loot/collections/shared_aurebesh_tile_senth.iff",
			"object/tangible/loot/creature_loot/collections/shared_aurebesh_tile_shen.iff",
			"object/tangible/loot/creature_loot/collections/shared_aurebesh_tile_thesh.iff",
			"object/tangible/loot/creature_loot/collections/shared_aurebesh_tile_trill.iff"
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_furniture_tarkin_custom_aurebesh_peth, "object/draft_schematic/furniture/tarkin_custom/aurebesh_peth.iff")
