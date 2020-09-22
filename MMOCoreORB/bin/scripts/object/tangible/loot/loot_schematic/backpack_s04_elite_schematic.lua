object_tangible_loot_loot_schematic_backpack_s04_elite_schematic = object_tangible_loot_loot_schematic_shared_backpack_s04_elite_schematic:new {
	templateType = LOOTSCHEMATIC,
	customName = "Elite Tech Pack Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_backpack_field_04_elite.iff",
	targetUseCount = 5
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_backpack_s04_elite_schematic, "object/tangible/loot/loot_schematic/backpack_s04_elite_schematic.iff")