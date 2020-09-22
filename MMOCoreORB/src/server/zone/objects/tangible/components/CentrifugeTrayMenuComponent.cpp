/*
 * CentrifugeTrayMenuComponent.cpp
 *
 *  Tarkin's Revenge
 *     May 2019
 */

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "CentrifugeTrayMenuComponent.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/tangible/events/ProcessTrayNotifyAvailableEvent.h"

void CentrifugeTrayMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (sceneObject == NULL || !sceneObject->isTangibleObject() || player == NULL)
		return;
	
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	if (player->hasSkill("outdoors_bio_engineer_novice")) {
		menuResponse->addRadialMenuItem(115, 3, "Refine Enzymes");
	}
}

int CentrifugeTrayMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;	

	if (selectedID == 115) {	
		ManagedReference<LootManager*> lootManager = sceneObject->getZone()->getZoneServer()->getLootManager();

		if (lootManager == NULL) {
			player->sendSystemMessage("Error: LootManager is NULL. Contact an Admin for help.");
			return 0;
		}	

		if (!sceneObject->isASubChildOf(player)) {
			player->sendSystemMessage("Enzyme refining tray must be in your inventory to use.");
			return 0;
		}	

		if (!sceneObject->isContainerObject())
			return 0;

		SceneObject* inventory = player->getSlottedObject("inventory");

		if (inventory == NULL)
			return 0;

		if (inventory->isContainerFullRecursive()){
			player->sendSystemMessage("Not enough room in your inventory to refine enzymes.");
			return 0;
		}

		int containerSize = sceneObject->getContainerObjectsSize();
		if (containerSize > 5){  // Refining tray should only hold five items
			player->sendSystemMessage("Error: Too many items in refining tray.");
			return 0;
		}

		ManagedReference<SceneObject*> enzymeComponentA = NULL;
		ManagedReference<SceneObject*> enzymeComponentB = NULL;
		ManagedReference<SceneObject*> enzymeComponentC = NULL;
		ManagedReference<SceneObject*> enzymeComponentD = NULL;
		ManagedReference<SceneObject*> enzymeComponentE = NULL;

		int enzymeElements = 0;

		for (int i = 0; i < sceneObject->getContainerObjectsSize(); i++) {

			SceneObject* enzymeElement = sceneObject->getContainerObject(i);

			if (enzymeElement->getServerObjectCRC() == 0x23CD608F) { // object/tangible/loot/beast/enzyme_3_element_1.iff
				enzymeComponentA = enzymeElement;
			} else if (enzymeElement->getServerObjectCRC() == 0xF8DAC818) { // object/tangible/loot/beast/enzyme_3_element_2.iff
				enzymeComponentB = enzymeElement;
			} else if (enzymeElement->getServerObjectCRC() == 0xB1D7AF95) { // object/tangible/loot/beast/enzyme_3_element_3.iff
				enzymeComponentC = enzymeElement;
			} else if (enzymeElement->getServerObjectCRC() == 0x4A348481) { // object/tangible/loot/beast/enzyme_3_element_4.iff
				enzymeComponentD = enzymeElement;
			} else if (enzymeElement->getServerObjectCRC() == 0x339E30C) { // object/tangible/loot/beast/enzyme_3_element_5.iff
				enzymeComponentE = enzymeElement;
			}
			enzymeElements++;
		}

		if (enzymeElements > 5) {
			player->sendSystemMessage("Error: Too many enzyme elements in the refining tray.");
			return 0;
		} else if (enzymeElements < 5) {
			player->sendSystemMessage("Error: Not enough enzyme elements in the refining tray.  You need one each of A, B, C, D, and E.");
			return 0;
		}

		if (enzymeComponentA == NULL || enzymeComponentB == NULL || enzymeComponentC == NULL || enzymeComponentD == NULL || enzymeComponentE == NULL ) {
			player->sendSystemMessage("Error: Wrong combination of enzyme elements. You need one each of A, B, C, D, and E.");
			return 0;
		}

		// Add a short delay
		player->sendSystemMessage("Refining five enzyme elements, please wait...");
		Reference<ProcessTrayNotifyAvailableEvent*> task = new ProcessTrayNotifyAvailableEvent(player, sceneObject); 
		sceneObject->addPendingTask("processing", task, 3 * 1000); // Delete the tray & contents and create one isomerase element in the task

		// If tray is processing, deny player access to the container
		if (sceneObject->getPendingTask("processing") != NULL) {
			ContainerPermissions* itemPerms = sceneObject->getContainerPermissions();
			itemPerms->setInheritPermissionsFromParent(false);
			itemPerms->clearDefaultAllowPermission(ContainerPermissions::OPEN);
			itemPerms->clearDefaultAllowPermission(ContainerPermissions::MOVECONTAINER);
			itemPerms->setDefaultDenyPermission(ContainerPermissions::OPEN);
			itemPerms->setDefaultDenyPermission(ContainerPermissions::MOVECONTAINER);
		}	
	}
	
	return 1;
}
