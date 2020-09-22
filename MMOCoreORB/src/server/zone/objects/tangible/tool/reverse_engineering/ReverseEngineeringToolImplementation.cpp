/*
 * ReverseEngineeringToolImplementation.cpp
 *
 *  	      Tarkin's Revenge
 *             February 2020
 */

#include "server/zone/objects/tangible/tool/reverse_engineering/ReverseEngineeringTool.h"
#include "templates/tangible/tool/ReverseEngineeringToolTemplate.h"
#include "server/zone/objects/manufactureschematic/craftingvalues/CraftingValues.h"
#include "server/zone/packets/scene/AttributeListMessage.h"

void ReverseEngineeringToolImplementation::loadTemplateData(SharedObjectTemplate* templateData) {
	TangibleObjectImplementation::loadTemplateData(templateData);
}

void ReverseEngineeringToolImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object) {
	TangibleObjectImplementation::fillAttributeList(alm, object);
	alm->insertAttribute("quality", Math::getPrecision(quality, 1));
}

void ReverseEngineeringToolImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {
	quality = values->getCurrentValue("quality");
}
