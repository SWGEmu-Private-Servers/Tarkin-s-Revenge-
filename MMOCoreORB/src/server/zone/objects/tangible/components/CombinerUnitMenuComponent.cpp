/*
 * CombinerUnitMenuComponent.cpp
 *
 *  Tarkin's Revenge
 *     May 2019
 */

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "CombinerUnitMenuComponent.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/tangible/events/ProcessCombinerNotifyAvailableEvent.h"

void CombinerUnitMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (sceneObject == NULL || !sceneObject->isTangibleObject() || player == NULL)
		return;
	
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	if (player->hasSkill("outdoors_bio_engineer_novice")) {
		menuResponse->addRadialMenuItem(115, 3, "Start Enzyme Re-Processor");
	}
}

int CombinerUnitMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
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
			player->sendSystemMessage("Enzyme re-processor must be in your inventory to use.");
			return 0;
		}

		if (!sceneObject->isContainerObject())
			return 0;

		SceneObject* inventory = player->getSlottedObject("inventory");

		if (inventory == NULL)
			return 0;

		if (inventory->isContainerFullRecursive()){
			player->sendSystemMessage("Not enough room in your inventory to process enzymes.");
			return 0;
		}

		int containerSize = sceneObject->getContainerObjectsSize();
		if (containerSize > 3){  // Re-processor should only hold three items
			player->sendSystemMessage("Error: Too many items in re-processor.");
			return 0;
		}	

		ManagedReference<SceneObject*> liveSample = NULL;
		ManagedReference<SceneObject*> enzymeComponent1 = NULL;
		ManagedReference<SceneObject*> enzymeComponent2 = NULL;

		int contents = 0;
		int samples = 0;
		int elements = 0;

		for (int i = 0; i < sceneObject->getContainerObjectsSize(); i++) {

			SceneObject* contentItem = sceneObject->getContainerObject(i);

			if (contentItem->getObjectTemplate()->getFullTemplateString().contains("sample_") && 
			(contentItem->getObjectTemplate()->getFullTemplateString().contains("bats") || 
			contentItem->getObjectTemplate()->getFullTemplateString().contains("bees") ||
			contentItem->getObjectTemplate()->getFullTemplateString().contains("butterflies") ||
			contentItem->getObjectTemplate()->getFullTemplateString().contains("glowzees") ||
			contentItem->getObjectTemplate()->getFullTemplateString().contains("moths") ||
			contentItem->getObjectTemplate()->getFullTemplateString().contains("flies") ||
			contentItem->getObjectTemplate()->getFullTemplateString().contains("bugs"))) { // must be a live creature sample
				liveSample = contentItem;
				samples++;
			} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("enzyme_3_element_") && enzymeComponent1 == NULL) { // must be the first enzyme element
				enzymeComponent1 = contentItem;
				elements++;
			} else if (contentItem->getObjectTemplate()->getFullTemplateString().contains("enzyme_3_element_")) { // must be the second enzyme element
				enzymeComponent2 = contentItem;
				elements++;
			}
			contents++;
		}

		if (contents > 3) {
			player->sendSystemMessage("Error: Too many items in the re-processor.");
			return 0;
		} else if (contents < 3) {
			player->sendSystemMessage("Error: Not enough items in the re-processor.  You need two enzyme elements and one live creature sample.");
			return 0;
		}

		if (liveSample == NULL || enzymeComponent1 == NULL || enzymeComponent2 == NULL) {
			player->sendSystemMessage("Error: Wrong combination of ingredients. You need two enzyme elements and one live creature sample.");
			return 0;
		}

		if (samples != 1 || elements != 2) {
			player->sendSystemMessage("Error: Wrong combination of ingredients. You need two enzyme elements and one live creature sample.");
			return 0;
		}

		// Add a short delay
		player->sendSystemMessage("Processing enzyme elements and live creature sample, please wait...");
		Reference<ProcessCombinerNotifyAvailableEvent*> task = new ProcessCombinerNotifyAvailableEvent(player, sceneObject); 
		sceneObject->addPendingTask("processing", task, 3 * 1000); // Delete the re-processor & contents and create one lyase element in the task

		// If re-processor is processing, deny player access to the container
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
