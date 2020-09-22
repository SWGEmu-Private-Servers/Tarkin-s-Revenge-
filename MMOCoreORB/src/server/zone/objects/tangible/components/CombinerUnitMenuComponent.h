#ifndef COMBINERUNITMENUCOMPONENT_H_
#define COMBINERUNITMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class CombinerUnitMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

};


#endif /* COMBINERUNITMENUCOMPONENT_H_ */
