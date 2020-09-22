/*
 * ProcessTrayNotifyAvailableEvent.h
 *
 *  Tarkin's Revenge
 *     May 2019
 */

#ifndef PROCESSTRAYNOTIFYAVAILABLEEVENT_H_
#define PROCESSTRAYNOTIFYAVAILABLEEVENT_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/loot/LootManager.h"

class ProcessTrayNotifyAvailableEvent : public Task {
	ManagedWeakReference<CreatureObject*> creo;
	ManagedWeakReference<SceneObject*> tool;

public:
	ProcessTrayNotifyAvailableEvent(CreatureObject* player, SceneObject* sceneObject) : Task() {
		creo = player;
		tool = sceneObject;
	}

	void run() {
		ManagedReference<SceneObject*> tray = tool.get();

		if (tray == NULL)
			return;

		ManagedReference<CreatureObject*> player = creo.get();
		ManagedReference<LootManager*> lootManager = tray->getZone()->getZoneServer()->getLootManager();

		if (player != NULL) {
			SceneObject* inventory = player->getSlottedObject("inventory");

			for (int i = 0; i < tray->getContainerObjectsSize(); i++) {
				SceneObject* enzymeElement = tray->getContainerObject(i);

				// Delete contents of tray
				Locker locker(enzymeElement);
				enzymeElement->destroyObjectFromWorld(true);
				enzymeElement->destroyObjectFromDatabase(true);
			}

			tray->removePendingTask("processing");

			// Delete tray itself
			Locker locker2(tray);
			tray->destroyObjectFromWorld(true);
			tray->destroyObjectFromDatabase(true); 


			// Create the element
			lootManager->createLoot(inventory, "isomerase_enzymes", 1);
			player->sendSystemMessage("Processing Complete! One isomerase enzyme has been processed from the enzyme elements, and has been placed in your inventory.  The refining tray was consumed in this process.");

		}
	}

};

#endif /*PROCESSTRAYNOTIFYAVAILABLEEVENT_H_*/
