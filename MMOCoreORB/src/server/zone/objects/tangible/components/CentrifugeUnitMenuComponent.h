#ifndef CENTRIFUGEUNITMENUCOMPONENT_H_
#define CENTRIFUGEUNITMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class CentrifugeUnitMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

};


#endif /* CENTRIFUGEUNITMENUCOMPONENT_H_ */
