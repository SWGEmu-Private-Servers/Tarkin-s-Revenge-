#ifndef CENTRIFUGETRAYMENUCOMPONENT_H_
#define CENTRIFUGETRAYMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class CentrifugeTrayMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

};


#endif /* CENTRIFUGETRAYMENUCOMPONENT_H_ */
