jabbas_power_handler = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Jabba's Overcharged Blaster Power Handler",
	directObjectTemplate = "object/tangible/component/weapon/blaster_power_handler.iff",
	craftingValues = {
		{"mindamage",10,25,0},
		{"maxdamage",10,75,0},
		{"attackspeed",-0.3,-0.7,1},
		{"woundchance",0,15,0},
		{"hitpoints",20,100,0},
		{"useCount",3,11,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("jabbas_power_handler", jabbas_power_handler)
