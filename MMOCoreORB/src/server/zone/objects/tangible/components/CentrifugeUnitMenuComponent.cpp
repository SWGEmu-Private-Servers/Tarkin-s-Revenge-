/*
 * CentrifugeUnitMenuComponent.cpp
 *
 *  Tarkin's Revenge
 *     May 2019
 */

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "CentrifugeUnitMenuComponent.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/tangible/events/ProcessCentrifugeNotifyAvailableEvent.h"

void CentrifugeUnitMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (sceneObject == NULL || !sceneObject->isTangibleObject() || player == NULL)
		return;

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	if (player->hasSkill("outdoors_bio_engineer_novice")) {
		menuResponse->addRadialMenuItem(115, 3, "Start Centrifuge");
	}
}

int CentrifugeUnitMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (sceneObject == NULL) {
		return 0;
	}

	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;	

	if (selectedID == 115) {

		if (sceneObject->getZone()->getZoneServer() == NULL) {
			return 0;
		}

		ManagedReference<LootManager*> lootManager = sceneObject->getZone()->getZoneServer()->getLootManager();

		if (lootManager == NULL) {
			player->sendSystemMessage("Error: LootManager is NULL. Contact an Admin for help.");
			return 0;
		}	

		if (!sceneObject->isASubChildOf(player)) {
			player->sendSystemMessage("Enzyme centrifuge must be in your inventory to use.");
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
		if (containerSize > 1){  // Centrifuge should only hold one item
			player->sendSystemMessage("Error: Too many items in centrifuge.");
			return 0;
		}

		ManagedReference<SceneObject*> enzymeComponent = NULL;
		int enzymes = 0;

		for (int i = 0; i < sceneObject->getContainerObjectsSize(); i++) {

			SceneObject* enzyme = sceneObject->getContainerObject(i);

			if (enzyme->getServerObjectCRC() == 0xA12AD360) { // object/tangible/loot/beast/enzyme_3.iff
				enzymeComponent = enzyme;
				enzymes++;

				if (enzymes > 1){
					player->sendSystemMessage("Error: Too many enzymes in the centrifuge.");
					return 0;
				}

				// Add a short delay
				player->sendSystemMessage("Processing hydrolase enzyme into its component elements, please wait...");
				Reference<ProcessCentrifugeNotifyAvailableEvent*> task = new ProcessCentrifugeNotifyAvailableEvent(player, sceneObject); 
				sceneObject->addPendingTask("processing", task, 3 * 1000); // Delete the centrifuge & contents and create enzyme elements in the task

				// If centrifuge is processing, deny player access to the container
				if (sceneObject->getPendingTask("processing") != NULL) {
					ContainerPermissions* itemPerms = sceneObject->getContainerPermissions();
					itemPerms->setInheritPermissionsFromParent(false);
					itemPerms->clearDefaultAllowPermission(ContainerPermissions::OPEN);
					itemPerms->clearDefaultAllowPermission(ContainerPermissions::MOVECONTAINER);
					itemPerms->setDefaultDenyPermission(ContainerPermissions::OPEN);
					itemPerms->setDefaultDenyPermission(ContainerPermissions::MOVECONTAINER);
				}	

			}
		} 

		if (enzymeComponent == NULL){
			player->sendSystemMessage("Error: Centrifuge requires a hydrolase enzyme in its hopper to process enzyme elements.");
			return 0;
		}	
	}
	
	return 1;
}
