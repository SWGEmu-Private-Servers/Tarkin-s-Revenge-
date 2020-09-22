/*
 * EnzymeExtractorMenuComponent
 * Tarkin's Revenge
 * May 2019
 */

#ifndef ENZYMEEXTRACTORMENUCOMPONENT_H_
#define ENZYMEEXTRACTORMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"
#include "server/zone/packets/scene/AttributeListMessage.h"

class EnzymeExtractorMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

};


#endif /* ENZYMEEXTRACTORMENUCOMPONENT_H_ */
