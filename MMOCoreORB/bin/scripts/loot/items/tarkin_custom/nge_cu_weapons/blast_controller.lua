blast_controller = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/loot/dungeon/tarkin_custom/blast_controller.iff",
	craftingValues = {
		{"mindamage",5,35,0},
		{"maxdamage",5,35,0},
		{"attackspeed",-0.2,-0.7,1},
		{"hitpoints",50,150,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("blast_controller", blast_controller)