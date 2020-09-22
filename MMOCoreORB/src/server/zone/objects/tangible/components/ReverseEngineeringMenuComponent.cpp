/*
 * ReverseEngineeringMenuComponent.cpp
 *
 *         Tarkin's Revenge
 *          February 2020
 */
#include "ReverseEngineeringMenuComponent.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/component/Component.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/tangible/tool/reverse_engineering/ReverseEngineeringTool.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/director/DirectorManager.h"
#include "server/zone/managers/crafting/CraftingManager.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"

void ReverseEngineeringMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (sceneObject == NULL || !sceneObject->isTangibleObject() || player == NULL)
		return;
	
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	if ((sceneObject->getServerObjectCRC() == 0x6F0650C3) && player->hasSkill("crafting_weaponsmith_master"))
		menuResponse->addRadialMenuItem(115, 3, "Reverse Engineer");
}

int ReverseEngineeringMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;

	if (selectedID == 115) { // Weapon Component Reverse Engineering	
		if (!sceneObject->isASubChildOf(player)) {
			player->sendSystemMessage("Error: Tool must be in your inventory to use.");
			return 0;
		}	

		if (!sceneObject->isContainerObject())
			return 0;
			
		SceneObject* inventory = player->getSlottedObject("inventory");

		if (inventory == NULL)
			return 0;

		if (inventory->isContainerFullRecursive()){
			player->sendSystemMessage("Error: Not enough room in your inventory to reverse engineer.");
			return 0;
		}

		int containerSize = sceneObject->getContainerObjectsSize();
		if (containerSize > 5){  // Tool should only hold five items
			player->sendSystemMessage("Error: Too many items in tool.");
			return 0;
		}

		if (containerSize < 5){  // Tool must have five items
			player->sendSystemMessage("Error: You must have five of the same weapon type to reverse engineer a component.");
			return 0;
		}

		int ingredients = 0;

		SceneObject* firstIngredient = sceneObject->getContainerObject(0);
		uint32 templateCrc = firstIngredient->getServerObjectCRC();

		TangibleObject* tangible = cast<TangibleObject*>(sceneObject);

		if(tangible == NULL) {
			player->sendSystemMessage("Error: Invalid tool.");
			return 0;
		}

		ManagedReference<ReverseEngineeringTool*> tool = cast<ReverseEngineeringTool*>(tangible);

		if (tool == NULL) {
			player->sendSystemMessage("Error: Invalid tool.");
			return 0;
		}

		float toolQuality = (tool->getQuality()) / 100.f;

		// Mods
		float minDamage = 0;
		float maxDamage = 0;
		float attackSpeed = 0.f;
		float hitPoints = 0;
		float woundChance = 0;
		float midRangeMod = 0;

		// Sum the attribute values of the components inside
		for (int i = 0; i < sceneObject->getContainerObjectsSize(); i++) {

			SceneObject* ingredient = sceneObject->getContainerObject(i);
			uint32 crc = ingredient->getServerObjectCRC();
			if (crc == templateCrc) {

				ManagedReference<TangibleObject*> tano = cast<TangibleObject*>(ingredient);

				if (tano == NULL || !tano->isComponent())
					continue;

				ManagedReference<Component*> component = cast<Component*>( tano.get());

				minDamage += component->getAttributeValue("mindamage");
				maxDamage += component->getAttributeValue("maxdamage");
				attackSpeed += component->getAttributeValue("attackspeed");
				hitPoints += component->getAttributeValue("hitpoints");

				if (component->getAttributeValue("woundchance") > 0)
					woundChance += component->getAttributeValue("woundchance");
				
				if (component->getAttributeValue("midrangemod") > 0)
					midRangeMod += component->getAttributeValue("midrangemod");

				ingredients++;
			}
		}

		// Make sure all 5 objects inside the container are of the same crc
		if (ingredients > 5) {
			player->sendSystemMessage("Error: Too many items in the tool.");
			return 0;
		} else if (ingredients < 5) {
			player->sendSystemMessage("Error: You need five of the same type of stolen weapon to reverse engineer a component.");
			return 0;
		}

		// Look up the template to produce
		String templateString = "";
				
		Lua* lua = new Lua();
		lua->init();
		lua->runFile("scripts/custom_scripts/screenplays/tools/tarkin_reverse_engineering.lua");

		LuaObject table = lua->getGlobalObject("weaponComponents");

		if (table.isValidTable() && table.getTableSize() > 0) {
			for (int i = 1; i <= table.getTableSize(); ++i) {
				LuaObject subTable = table.getObjectAt(i);

				if (subTable.isValidTable()) {
					String k = subTable.getStringAt(1);
					String v = subTable.getStringAt(2);
					if (k.hashCode() == templateCrc) {
						templateString = v;
						break;
					}
				}
				subTable.pop();
			}
		}
		
		// If it didn't find a match, present an error message
		if (templateString == "") {
			player->sendSystemMessage("Error: You can't make heads or tails of these items.");
			return 0;
		}

		// Calculate stats
		float modifier = 1.20f;

		if (minDamage != 0)
			minDamage = (minDamage / 5) * modifier * toolQuality;
		if (maxDamage != 0)
			maxDamage = (maxDamage / 5) * modifier * toolQuality;
		if (attackSpeed != 0.f)
			attackSpeed = (attackSpeed / 5.f) * modifier * toolQuality;
		if (hitPoints != 0){
			hitPoints = (hitPoints / 5) * modifier * toolQuality;
		}	
		if (woundChance != 0)
			woundChance = (woundChance / 5) * modifier * toolQuality;
		if (midRangeMod != 0)
			midRangeMod = (midRangeMod / 5) * modifier * toolQuality;


		ManagedReference<CraftingManager*> craftingManager = player->getZoneServer()->getCraftingManager();
		if (craftingManager == NULL) {
			player->sendSystemMessage("There was an error with the crafting manager, please contact an admin.");
			return 0;
		}

		// Deny player access to the container
		ContainerPermissions* itemPerms = sceneObject->getContainerPermissions();
		itemPerms->setInheritPermissionsFromParent(false);
		itemPerms->clearDefaultAllowPermission(ContainerPermissions::OPEN);
		itemPerms->clearDefaultAllowPermission(ContainerPermissions::MOVECONTAINER);
		itemPerms->setDefaultDenyPermission(ContainerPermissions::OPEN);
		itemPerms->setDefaultDenyPermission(ContainerPermissions::MOVECONTAINER);
		
		// Delete contents of tool
		while (sceneObject->getContainerObjectsSize() > 0) {
			ManagedReference<SceneObject*> ingredient = sceneObject->getContainerObject(0);
			Locker locker(ingredient);
			ingredient->destroyObjectFromWorld(true);
			ingredient->destroyObjectFromDatabase(true);
		}

		// Create the component
		ManagedReference<TangibleObject*> prototype = sceneObject->getZone()->getZoneServer()->createObject(templateString.hashCode(), 2).castTo<TangibleObject*>();

		if (prototype == NULL) {
			return 0;
		}

		Locker clocker(prototype);

		ManagedReference<Component*> weaponComponent = cast<Component*>( prototype.get());

		// Set the component values
		weaponComponent->addProperty("mindamage", minDamage, 0, "exp_effectiveness");
		weaponComponent->addProperty("maxdamage", maxDamage, 0, "exp_effectiveness");
		weaponComponent->addProperty("attackspeed", (float)attackSpeed, 1, "exp_effectiveness");
		weaponComponent->addProperty("hitpoints", hitPoints, 0, "exp_effectiveness");
		
		if (woundChance != 0)
			weaponComponent->addProperty("woundchance", woundChance, 0, "exp_effectiveness");

		if (midRangeMod != 0)
			weaponComponent->addProperty("midrangemod", midRangeMod, 0, "exp_effectiveness");

		// Generate a serial number
		String serial = craftingManager->generateSerial();
		prototype->setSerialNumber(serial);	

		// Set the creator's name
		String name = player->getFirstName();
		prototype->setCraftersName(name);

		// Add the component to the player's inventory
		Locker ilocker(inventory);
		if (inventory->transferObject(prototype, -1, true, false)) {
			inventory->broadcastObject(prototype, true);
		} else {
			prototype->destroyObjectFromDatabase(true);
		}

		// Destroy the tool
		Locker slocker(sceneObject);
		sceneObject->destroyObjectFromWorld(true);
		sceneObject->destroyObjectFromDatabase(true);

		// Send player a message, letting them know that it's done.
		player->sendSystemMessage("Through intense study, you manage to reverse engineer a weapon comonent.");

	}
	return 1;
}
