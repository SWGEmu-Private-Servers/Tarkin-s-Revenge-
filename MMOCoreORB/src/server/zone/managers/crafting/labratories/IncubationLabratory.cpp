/*
 * IncubationLabratory.cpp
 * Yes, I know it's spelled "laboratory"
 *  Tarkin's Revenge
 *     May 2019
 */
 
#include "IncubationLabratory.h"
#include "server/zone/objects/tangible/component/genetic/EnzymeComponent.h"
#include "server/zone/objects/tangible/component/genetic/IncubationComponent.h"
#include "server/zone/objects/draftschematic/DraftSchematic.h"
#include "server/zone/objects/manufactureschematic/ingredientslots/ComponentSlot.h"
#include "server/zone/objects/tangible/component/Component.h"
#include "server/zone/managers/crafting/CraftingManager.h"


IncubationLabratory::IncubationLabratory() {
}

IncubationLabratory::~IncubationLabratory() {
}

void IncubationLabratory::setInitialCraftingValues(TangibleObject* prototype, ManufactureSchematic* manufactureSchematic, int assemblySuccess) {
	if (manufactureSchematic == NULL)
		return;

	ManagedReference<DraftSchematic* > draftSchematic = manufactureSchematic->getDraftSchematic();

	if (draftSchematic == NULL)
		return;

	CraftingValues* craftingValues = manufactureSchematic->getCraftingValues();
	float value, maxPercentage, currentPercentage, weightedSum;
	String itemName;

	// XP and complexity are standard values
	itemName = "xp";
	value = float(draftSchematic->getXpAmount());
	craftingValues->addExperimentalProperty("", itemName, value, value, 0, true, ValuesMap::OVERRIDECOMBINE);
	itemName = "complexity";
	value = manufactureSchematic->getComplexity();
	craftingValues->addExperimentalProperty("", itemName, value, value, 0, true, ValuesMap::OVERRIDECOMBINE);
	float modifier = calculateAssemblyValueModifier(assemblySuccess);
	int subtitleCounter = 0;

	// Cast component
	if (!prototype->isComponent())
		return;

	ManagedReference<IncubationComponent*> incubated = cast<IncubationComponent*>(prototype);

	if (incubated == NULL)
		return;

	HashTable<String, ManagedReference<EnzymeComponent*> > slots;

	for (int i = 0; i < manufactureSchematic->getSlotCount(); ++i) {
		// Enzyme Component Slots
		Reference<IngredientSlot* > iSlot = manufactureSchematic->getSlot(i);
		ComponentSlot* cSlot = iSlot.castTo<ComponentSlot*>();

		if (cSlot == NULL)
			continue;

		ManagedReference<TangibleObject*> tano = cSlot->getPrototype();

		if (tano == NULL)
			continue;

		ManagedReference<EnzymeComponent*> component = tano.castTo<EnzymeComponent*>();

		if (component == NULL)
			continue;

		slots.put(cSlot->getSlotName(), component);
	}

	// We now have all the enzyme slots, update the crafting values
	EnzymeComponent* p1Hydro = slots.get("phase_1_hydrolase").get();
	EnzymeComponent* p1Iso = slots.get("phase_1_isomerase").get();
	EnzymeComponent* p1Lyase = slots.get("phase_1_lyase").get();
	EnzymeComponent* p2Hydro = slots.get("phase_2_hydrolase").get();
	EnzymeComponent* p2Iso = slots.get("phase_2_isomerase").get();
	EnzymeComponent* p2Lyase = slots.get("phase_2_lyase").get();
	EnzymeComponent* p3Hydro = slots.get("phase_3_hydrolase").get();
	EnzymeComponent* p3Iso = slots.get("phase_3_isomerase").get();
	EnzymeComponent* p3Lyase = slots.get("phase_3_lyase").get();

	if (p1Hydro == NULL || p1Iso == NULL || p1Lyase == NULL || p2Hydro == NULL || p2Iso == NULL || p2Lyase == NULL || p3Hydro == NULL || p3Iso == NULL || p3Lyase == NULL)
		return;

	// Determine attributes
	int p1Purity,p2Purity,p3Purity,p1Mutagen,p2Mutagen,p3Mutagen,p1Reference,p2Reference,p3Reference,p1Baseline,p2Baseline,p3Baseline;

	// Pull in the attribute values
	p1Purity = p1Hydro->getPurity();
	p2Purity = p2Hydro->getPurity();
	p3Purity = p3Hydro->getPurity();
	p1Mutagen = p1Hydro->getMutagen();
	p2Mutagen = p2Hydro->getMutagen();
	p3Mutagen = p3Hydro->getMutagen();
	p1Reference = p1Lyase->getColor() + p1Iso->getColor() + p1Purity - p1Mutagen;
	p2Reference = p2Lyase->getColor() + p2Iso->getColor() + p2Purity - p2Mutagen;
	p3Reference = p3Lyase->getColor() + p3Iso->getColor() + p3Purity - p3Mutagen;
	p1Baseline = p1Lyase->getBaseline();
	p2Baseline = p2Lyase->getBaseline();
	p3Baseline = p3Lyase->getBaseline();

	
	// Make sure reference numbers are within range
	if (p1Reference < 0) {
		p1Reference += 27;
	} else if (p1Reference > 27) {
		p1Reference -=28;
	}

	if (p2Reference < 0) {
		p2Reference += 27;
	} else if (p2Reference > 27) {
		p2Reference -=28;
	}
	
	if (p3Reference < 0) {
		p3Reference += 27;
	} else if (p3Reference > 27) {
		p3Reference -=28;
	}

	// Apparently you must have experimental properties, even though we're not going to use them
	craftingValues->addExperimentalProperty("", "phase_1_purity", p1Purity, p1Purity, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_2_purity", p2Purity, p2Purity, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_3_purity", p3Purity, p3Purity, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_1_mutagen", p1Mutagen, p1Mutagen, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_2_mutagen", p2Mutagen, p2Mutagen, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_3_mutagen", p3Mutagen, p3Mutagen, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_1_reference", p1Reference, p1Reference, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_2_reference", p2Reference, p2Reference, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_3_reference", p3Reference, p3Reference, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_1_baseline", p1Baseline, p1Baseline, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_2_baseline", p2Baseline, p2Baseline, 0, true, ValuesMap::OVERRIDECOMBINE);
	craftingValues->addExperimentalProperty("", "phase_3_baseline", p3Baseline, p3Baseline, 0, true, ValuesMap::OVERRIDECOMBINE);

	craftingValues->recalculateValues(true);	
}

void IncubationLabratory::initialize(ZoneServer* server) {
	SharedLabratory::initialize(server);

}
int IncubationLabratory::getCreationCount(ManufactureSchematic* manufactureSchematic) {
	return 1;
}

void IncubationLabratory::experimentRow(CraftingValues* craftingValues,int rowEffected, int pointsAttempted, float failure, int experimentationResult){
	return;
}
