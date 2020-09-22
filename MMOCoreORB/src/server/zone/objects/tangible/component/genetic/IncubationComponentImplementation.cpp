/* Tarkin's Revenge
 * May 2017 
 */

#include "server/zone/objects/tangible/component/genetic/IncubationComponent.h"
#include "server/zone/packets/scene/AttributeListMessage.h"
#include "server/zone/managers/stringid/StringIdManager.h"

void IncubationComponentImplementation::initializeTransientMembers() {
	ComponentImplementation::initializeTransientMembers();
}

void IncubationComponentImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {
	ComponentImplementation::updateCraftingValues(values, firstUpdate);

	p1Purity = values->getCurrentValue("phase_1_purity");
	p1Mutagen = values->getCurrentValue("phase_1_mutagen");
	p1Reference = values->getCurrentValue("phase_1_reference");
	p1Baseline = values->getCurrentValue("phase_1_baseline");
	p2Purity = values->getCurrentValue("phase_2_purity");
	p2Mutagen = values->getCurrentValue("phase_2_mutagen");
	p2Reference = values->getCurrentValue("phase_2_reference");
	p2Baseline = values->getCurrentValue("phase_2_baseline");
	p3Purity = values->getCurrentValue("phase_3_purity");
	p3Mutagen = values->getCurrentValue("phase_3_mutagen");
	p3Reference = values->getCurrentValue("phase_3_reference");
	p3Baseline = values->getCurrentValue("phase_3_baseline");
}

void IncubationComponentImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object) {
	TangibleObjectImplementation::fillAttributeList(alm, object);

	alm->insertAttribute("phase_1_purity",(int)p1Purity);
	alm->insertAttribute("phase_1_mutagen",(int)p1Mutagen);
	alm->insertAttribute("phase_1_reference",(int)p1Reference);
	alm->insertAttribute("phase_1_baseline",(int)p1Baseline);
	alm->insertAttribute("phase_2_purity",(int)p2Purity);
	alm->insertAttribute("phase_2_mutagen",(int)p2Mutagen);
	alm->insertAttribute("phase_2_reference",(int)p2Reference);
	alm->insertAttribute("phase_2_baseline",(int)p2Baseline);
	alm->insertAttribute("phase_3_purity",(int)p3Purity);
	alm->insertAttribute("phase_3_mutagen",(int)p3Mutagen);
	alm->insertAttribute("phase_3_reference",(int)p3Reference);
	alm->insertAttribute("phase_3_baseline",(int)p3Baseline);
}
