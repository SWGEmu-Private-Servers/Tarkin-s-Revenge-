-- Tarkin's Revenge

recycler_parts = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {		
		{itemTemplate = "blue_wiring", weight = 1000000},
		{itemTemplate = "cheap_copper_battery", weight = 1000000},
		{itemTemplate = "feed_tube", weight = 1000000},
		{itemTemplate = "heating_element", weight = 1000000},
		{itemTemplate = "processor_attachment", weight = 1000000},
		{itemTemplate = "pulverizer", weight = 1000000},
		{itemTemplate = "red_wiring", weight = 1000000},
		{itemTemplate = "small_motor", weight = 1000000},
		{itemTemplate = "spinner_blade", weight = 1000000},
		{itemTemplate = "agitator_motor_schematic", weight = 250000},
		{itemTemplate = "tumble_blender_schematic", weight = 250000},	
		{itemTemplate = "flora_recycler_schematic", weight = 100000},
		{itemTemplate = "metal_recycler_schematic", weight = 100000},
		{itemTemplate = "ore_recycler_schematic", weight = 100000},
		{itemTemplate = "chemical_recycler_schematic", weight = 100000},
		{itemTemplate = "creature_recycler_schematic", weight = 100000},
	}
}

addLootGroupTemplate("recycler_parts", recycler_parts)
