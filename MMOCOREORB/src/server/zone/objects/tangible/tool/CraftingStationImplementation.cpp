/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#include "engine/engine.h"
#include "server/zone/objects/tangible/tool/CraftingStation.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "templates/tangible/tool/CraftingStationTemplate.h"
#include "server/zone/objects/tangible/tool/CraftingTool.h"
#include "server/zone/objects/manufactureschematic/craftingvalues/CraftingValues.h"
#include "server/zone/packets/scene/AttributeListMessage.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/ZoneProcessServer.h"
#include "server/zone/objects/tangible/deed/Deed.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/tangible/deed/pet/PetDeed.h"
#include "server/zone/objects/tangible/events/IncubatorEvent.h"
#include "server/zone/objects/tangible/events/IncubatorAnnouncementEvent.h"

void CraftingStationImplementation::loadTemplateData(SharedObjectTemplate* templateData) {
	TangibleObjectImplementation::loadTemplateData(templateData);

	if (!templateData->isCraftingStationTemplate())
		return;

	CraftingStationTemplate* craftingStationData = dynamic_cast<CraftingStationTemplate*>(templateData);

	type = craftingStationData->getStationType();
	complexityLevel = craftingStationData->getComplexityLevel();
}

void CraftingStationImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {
	TangibleObjectImplementation::fillObjectMenuResponse(menuResponse, player);

	ManagedReference<BuildingObject*> building = player->getParentRecursively(SceneObjectType::BUILDING).castTo<BuildingObject*>();

	if (getStationType() == CraftingTool::FOOD) {
		if (getObjectName()->getFullPath().contains("incubator_station") && !isASubChildOf(player)) {
			if(building != NULL) {
				if(building->isOnAdminList(player) && getSlottedObject("ingredient_hopper") != NULL && getSlottedObject("ingredient_hopper")->getPendingTask("incubating") == NULL) {
					menuResponse->addRadialMenuItem(68, 3, "@ui_radial:craft_hopper_input"); //Open
					if (player->hasSkill("outdoors_bio_engineer_novice")) {
						menuResponse->addRadialMenuItem(75, 3, "Incubate Pet Deed");
					}
				}
			}
		}
	}
}

int CraftingStationImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {

	if (selectedID == 68 && getSlottedObject("ingredient_hopper") != NULL) { // Open input hopper
			sendInputHopper(player);
	}

	if (selectedID == 75) {  
		incubatePetDeed(player);
	}

	return TangibleObjectImplementation::handleObjectMenuSelect(player, selectedID);
}

void CraftingStationImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object) {
	TangibleObjectImplementation::fillAttributeList(alm, object);

	alm->insertAttribute("stationmod", Math::getPrecision(effectiveness, 2));
}

void CraftingStationImplementation::sendInputHopper(CreatureObject* player) {

	ManagedReference<SceneObject*> inputHopper = getSlottedObject("ingredient_hopper");

	if(inputHopper == NULL) {
		return;
	}

	inputHopper->sendDestroyTo(player);
	inputHopper->closeContainerTo(player, true);

	inputHopper->sendWithoutContainerObjectsTo(player);
	inputHopper->openContainerTo(player);
}

SceneObject* CraftingStationImplementation::findCraftingTool(CreatureObject* player) {

	ManagedReference<SceneObject*> inventory = player->getSlottedObject(
			"inventory");
	Locker inventoryLocker(inventory);
	SceneObject* craftingTool = NULL;

	for (int i = 0; i < inventory->getContainerObjectsSize(); ++i) {

		SceneObject* object = inventory->getContainerObject(i);

		if (object != NULL && object->isCraftingTool()) {

			CraftingTool* tool = cast<CraftingTool*>( object);

			if(!tool->isReady())
				continue;

			int toolType = tool->getToolType();

			if (toolType == type) {
				return object;
			}

			if (toolType == CraftingTool::JEDI && type
					== CraftingTool::WEAPON) {
				craftingTool = object;
			}
		}

	}
	return craftingTool;
}

void CraftingStationImplementation::createChildObjects() {

}

void CraftingStationImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {
	/// useModifer is the effectiveness

	effectiveness = values->getCurrentValue("usemodifier");
	// Add a hopper to the incubator
	if(firstUpdate && values->hasSlotFilled("storage_compartment") && getObjectName()->getFullPath().contains("incubator_station")) {
		String ingredientHopperName = "object/tangible/hopper/crafting_station_hopper/crafting_station_ingredient_hopper_structure_incubator.iff";
		Reference<SceneObject*> ingredientHopper = (server->getZoneServer()->createObject(ingredientHopperName.hashCode(), 1)).castTo<SceneObject*>();

		transferObject(ingredientHopper, 4, true);
	}

	//craftingValues->toString();
}

void CraftingStationImplementation::incubatePetDeed(CreatureObject* player) {

	SceneObject* inventory = player->getSlottedObject("inventory");

	if (inventory == NULL)
		return;


	ManagedReference<SceneObject*> hopper = getSlottedObject("ingredient_hopper");

	if (hopper == NULL) {
		return;
	}

	int containerSize = hopper->getContainerObjectsSize();
	if (containerSize > 2){  // Incubator should only hold two items
		player->sendSystemMessage("Error: Too many items in incubator.");
		return;
	}

	ManagedReference<SceneObject*> deed = NULL;
	ManagedReference<SceneObject*> egg = NULL;
	ManagedReference<PetDeed*> petdeed = NULL;

	int contents = 0;
	int deeds = 0;
	int eggs = 0;

	for (int i = 0; i < hopper->getContainerObjectsSize(); i++) {

		SceneObject* contentItem = hopper->getContainerObject(i);

		if(contentItem->getServerObjectCRC() == 0x49F18C79) { // object/tangible/tarkin_custom/statted/creature_egg.iff
			egg = contentItem;
			eggs++;
		} else if (contentItem->getGameObjectType() == SceneObjectType::PETDEED) {
			deed = contentItem;
			petdeed = deed.castTo<PetDeed*>();
			deeds++;
		}
		contents++;
	}


	if (containerSize < 2) {  
		player->sendSystemMessage("Error: Not enough items in the incubator.  You need one egg and one pet deed.");
		return;
	}	

	if (eggs != 1) {  
		player->sendSystemMessage("Error: Incorect number of eggs in the incubator.  You need ONE egg.");
		return;
	}	

	if (deeds != 1) {  
		player->sendSystemMessage("Error: Incorect number of deeds in the incubator.  You need ONE deed.");
		return;
	}

	if (petdeed == NULL) {  
		player->sendSystemMessage("Error: There was a problem with your pet deed.");
		return;
	}

	if (petdeed->isGenerated()) {
		player->sendSystemMessage("Error: You cannot incubate system-generated pet deeds.");
		return;
	}

	if (petdeed->isSliced()) {
		player->sendSystemMessage("Error: This pet deed has already been incubated.");
		return;
	}

	int phase = 1;
	player->sendSystemMessage("Beginning Incubation Phase 1, please wait...");	
	Reference<IncubatorEvent*> task = new IncubatorEvent(player, hopper, phase); 
	hopper->addPendingTask("incubating", task, 8 * 1000); // Modify the pet deed - phase 1

	if (hopper->getPendingTask("incubating") != NULL) { // Lock the hopper so the player can't remove ingredients
		ContainerPermissions* itemPerms = hopper->getContainerPermissions();
		itemPerms->setInheritPermissionsFromParent(false);
		itemPerms->clearDefaultAllowPermission(ContainerPermissions::OPEN);
		itemPerms->clearDefaultAllowPermission(ContainerPermissions::MOVECONTAINER);
		itemPerms->setDefaultDenyPermission(ContainerPermissions::OPEN);
		itemPerms->setDefaultDenyPermission(ContainerPermissions::MOVECONTAINER);
	}

	phase = 2;
	Reference<IncubatorAnnouncementEvent*> announcement = new IncubatorAnnouncementEvent(player, phase); 
	player->addPendingTask("phase2", announcement, 10 * 1000); // Announce Phase 2 is starting
	task = new IncubatorEvent(player, hopper, phase); 
	hopper->addPendingTask("incubating2", task, 16 * 1000); // Modify the pet deed - phase 2

	phase = 3;
	announcement = new IncubatorAnnouncementEvent(player, phase); 
	player->addPendingTask("phase3", announcement, 18 * 1000); // Announce Phase 3 is starting
	task = new IncubatorEvent(player, hopper, phase); 
	hopper->addPendingTask("incubating3", task, 24 * 1000); // Modify the pet deed - phase 3, and delete the egg in the task
}
