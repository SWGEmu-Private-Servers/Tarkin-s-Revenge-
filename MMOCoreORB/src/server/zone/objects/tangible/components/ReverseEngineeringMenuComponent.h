#ifndef REVERSEENGINEERINGMENUCOMPONENT_H_
#define REVERSEENGINEERINGMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class ReverseEngineeringMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

};


#endif /* REVERSEENGINEERINGMENUCOMPONENT_H_ */
