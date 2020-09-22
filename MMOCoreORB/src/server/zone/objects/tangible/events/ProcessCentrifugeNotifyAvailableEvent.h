/*
 * ProcessCentrifugeNotifyAvailableEvent.h
 *
 *  Tarkin's Revenge
 *     May 2019
 */

#ifndef PROCESSCENTRIFUGENOTIFYAVAILABLEEVENT_H_
#define PROCESSCENTRIFUGENOTIFYAVAILABLEEVENT_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/loot/LootManager.h"

class ProcessCentrifugeNotifyAvailableEvent : public Task {
	ManagedWeakReference<CreatureObject*> creo;
	ManagedWeakReference<SceneObject*> tool;

public:
	ProcessCentrifugeNotifyAvailableEvent(CreatureObject* player, SceneObject* sceneObject) : Task() {
		creo = player;
		tool = sceneObject;
	}

	void run() {
		ManagedReference<SceneObject*> centrifuge = tool.get();

		if (centrifuge == NULL)
			return;

		ManagedReference<CreatureObject*> player = creo.get();
		ManagedReference<LootManager*> lootManager = centrifuge->getZone()->getZoneServer()->getLootManager();

		if (player != NULL) {
			SceneObject* inventory = player->getSlottedObject("inventory");

			for (int i = 0; i < centrifuge->getContainerObjectsSize(); i++) {
				SceneObject* enzyme = centrifuge->getContainerObject(i);

				// Delete contents of centrifuge
				Locker locker(enzyme);
				enzyme->destroyObjectFromWorld(true);
				enzyme->destroyObjectFromDatabase(true);
			}

			centrifuge->removePendingTask("processing");

			// Delete centrifuge itself
			Locker locker2(centrifuge);
			centrifuge->destroyObjectFromWorld(true);
			centrifuge->destroyObjectFromDatabase(true); 


			// Create the elements
			lootManager->createLoot(inventory, "enzyme_elements", 1);
			lootManager->createLoot(inventory, "enzyme_elements", 1);
			player->sendSystemMessage("Processing Complete! Two enzyme elements have been processed from raw hydrolase, and have been placed in your inventory.  The centrifuge was consumed in this process.");

		}
	}

};

#endif /*PROCESSCENTRIFUGENOTIFYAVAILABLEEVENT_H_*/
