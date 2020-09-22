kimo_claw = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/tarkin_custom/statted/kimo_claw.iff",
	craftingValues = {
		{"mindamage",20,160,0},
		{"maxdamage",40,160,0},
		{"attackspeed",0.5,0,1},
		{"woundchance",12,20,0},
		{"hitpoints",100,300,0},
		{"zerorangemod",-6,4,0},
		{"maxrangemod",-6,4,0},
		{"midrangemod",-6,4,0},
		{"attackhealthcost",32,8,0},
		{"attackactioncost",27,8,0},
		{"attackmindcost",27,8,0},
		{"useCount",1,5,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("kimo_claw", kimo_claw)
