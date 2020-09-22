creature_egg = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/tarkin_custom/statted/creature_egg.iff",
	craftingValues = {
		{"phase_1_purity",0,11,0},
		{"phase_1_mutagen",0,11,0},
		{"phase_1_reference",0,28,0},
		{"phase_1_baseline",0,28,0},
		{"phase_2_purity",0,11,0},
		{"phase_2_mutagen",0,11,0},
		{"phase_2_reference",0,28,0},
		{"phase_2_baseline",0,28,0},
		{"phase_3_purity",0,11,0},
		{"phase_3_mutagen",0,11,0},
		{"phase_3_reference",0,28,0},
		{"phase_3_baseline",0,28,0},
	},
	customizationStringNames = {},
	customizationValues = {},
	junkDealerTypeNeeded = JUNKGENERIC,
	junkMinValue = 20,
	junkMaxValue = 40
}

addLootItemTemplate("creature_egg", creature_egg)
