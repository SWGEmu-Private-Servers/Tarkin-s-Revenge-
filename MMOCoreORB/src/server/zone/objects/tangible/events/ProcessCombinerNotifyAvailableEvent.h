/*
 * ProcessCombinerNotifyAvailableEvent.h
 *
 *  Tarkin's Revenge
 *     May 2019
 */

#ifndef PROCESSCOMBINERNOTIFYAVAILABLEEVENT_H_
#define PROCESSCOMBINERNOTIFYAVAILABLEEVENT_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/loot/LootManager.h"

class ProcessCombinerNotifyAvailableEvent : public Task {
	ManagedWeakReference<CreatureObject*> creo;
	ManagedWeakReference<SceneObject*> tool;

public:
	ProcessCombinerNotifyAvailableEvent(CreatureObject* player, SceneObject* sceneObject) : Task() {
		creo = player;
		tool = sceneObject;
	}

	void run() {
		ManagedReference<SceneObject*> combiner = tool.get();

		if (combiner == NULL)
			return;

		ManagedReference<CreatureObject*> player = creo.get();
		ManagedReference<LootManager*> lootManager = combiner->getZone()->getZoneServer()->getLootManager();

		if (player != NULL) {
			SceneObject* inventory = player->getSlottedObject("inventory");

			String sample = "";
			String element1 = "";
			String element2 = "";
			StringBuffer lyase;
			StringBuffer leftTwo;

			for (int i = 0; i < combiner->getContainerObjectsSize(); i++) {
				SceneObject* contentItem = combiner->getContainerObject(i);

				if (contentItem->getObjectTemplate()->getFullTemplateString().contains("sample_")) {
			 		if (contentItem->getObjectTemplate()->getFullTemplateString().contains("bats")) {
						sample = "bats";
					} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("bees")) {
						sample = "bees";
					} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("butterflies")) {
						sample = "butterflies";
					} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("glowzees")) {
						sample = "glowzees";
					} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("moths")) {
						sample = "moths";
					} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("flies")) {
						sample = "flies";
					} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("bugs")) {
						sample = "bugs";
					}
				} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("enzyme_3_element_") && element1 == "") { // must be the first enzyme element
					element1 = (contentItem->getObjectTemplate()->getFullTemplateString().subString(contentItem->getObjectTemplate()->getFullTemplateString().length() - 5)).subString(0,1);
				} else {
					element2 = (contentItem->getObjectTemplate()->getFullTemplateString().subString(contentItem->getObjectTemplate()->getFullTemplateString().length() - 5)).subString(0,1);
				}
			}

			// Delete contents of re-processor
			for (int i = 0; i < combiner->getContainerObjectsSize(); i++) {
				SceneObject* item = combiner->getContainerObject(i);
				Locker locker(item);
				item->destroyObjectFromWorld(true);
				item->destroyObjectFromDatabase(true);		
			}

			String table = sample;
			leftTwo << element1 << element2;

			Lua* lua = new Lua();
			lua->init();

			lua->runFile("scripts/custom_scripts/screenplays/tools/reprocessor_table.lua");

			String lyaseColor = "";

			LuaObject rewardTable = lua->getGlobalObject(table);

			if (rewardTable.isValidTable() && rewardTable.getTableSize() > 0) {		
				for (int i = 1; i <= rewardTable.getTableSize(); ++i) {				
					if ((rewardTable.getStringAt(i)).subString(0,2) == leftTwo.toString()) {
						lyaseColor = ((rewardTable.getStringAt(i)).subString(2,3));
						lyase << "lyase_enzymes_" << lyaseColor;
					}	
				}
			}

			delete lua;		

			combiner->removePendingTask("processing");

			// Delete re-processor itself
			Locker locker2(combiner);
			combiner->destroyObjectFromWorld(true);
			combiner->destroyObjectFromDatabase(true); 

			// Create the element
			lootManager->createLoot(inventory, lyase.toString(), 1);
			player->sendSystemMessage("Processing Complete! One lyase enzyme has been processed from the enzyme elements and live sample, and has been placed in your inventory.  The enzyme re-processor was consumed in this process.");
		}
	}

};

#endif /*PROCESSCOMBINERNOTIFYAVAILABLEEVENT_H_*/
