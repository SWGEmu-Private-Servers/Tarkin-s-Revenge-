/*
 * IncubatorPhaseTwoEvent.h
 *
 *  Tarkin's Revenge
 *     June 2019
 */

#ifndef INCUBATORPHASETWOEVENT_H_
#define INCUBATORPHASETWOEVENT_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/tangible/deed/pet/PetDeed.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/tangible/events/IncubatorPhaseThreeEvent.h"

class IncubatorPhaseTwoEvent : public Task {
	ManagedWeakReference<CreatureObject*> creo;
	ManagedWeakReference<SceneObject*> tool;

public:
	IncubatorPhaseTwoEvent(CreatureObject* player, SceneObject* sceneObject) : Task() {
		creo = player;
		tool = sceneObject;
	}

	void run() {
		ManagedReference<SceneObject*> hopper = tool.get();

		if (hopper == NULL)
			return;

		ManagedReference<CreatureObject*> player = creo.get();

		if (player != NULL) {
			SceneObject* inventory = player->getSlottedObject("inventory");

			ManagedReference<SceneObject*> deed = NULL;
			ManagedReference<SceneObject*> egg = NULL;
			ManagedReference<PetDeed*> petdeed = NULL;

			for (int i = 0; i < hopper->getContainerObjectsSize(); i++) {
				SceneObject* contentItem = hopper->getContainerObject(i);
				if(contentItem->getServerObjectCRC() == 0x49F18C79) {
					egg = contentItem;
				} else if (contentItem->getGameObjectType() == SceneObjectType::PETDEED) {
					deed = contentItem;
					petdeed = deed.castTo<PetDeed*>();
				}
			}

			// Modify the deed
			player->sendSystemMessage("Phase Two Complete! Your pet deed has been modified: ");

			/*
			* Insert deed modification here
			*/

			player->sendSystemMessage("Processing Phase Three of incubation, please wait...");
			Reference<IncubatorPhaseThreeEvent*> task = new IncubatorPhaseThreeEvent(player, hopper); 
			hopper->addPendingTask("incubating", task, 3 * 1000); 
		}
	}

};

#endif /*INCUBATORPHASETWOEVENT_H_*/
