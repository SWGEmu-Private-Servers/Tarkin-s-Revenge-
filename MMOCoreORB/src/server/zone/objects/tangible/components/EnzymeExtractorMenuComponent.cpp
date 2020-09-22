/*
 * EnzymeExtractorMenuComponent.cpp
 * Tarkin's Revenge
 * May 2019
 */

#include "EnzymeExtractorMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/scene/components/ObjectMenuComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/creature/DnaManager.h"

void EnzymeExtractorMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

}

int EnzymeExtractorMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(player))
		return 0;

	if (selectedID == 20) {
		ManagedReference<LootManager*> lootManager = sceneObject->getZone()->getZoneServer()->getLootManager();

		if (lootManager == NULL)
			return 0;

		ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
		
		if (inventory == NULL)
			return 0;
			
		if (inventory->isContainerFullRecursive()){
			player->sendSystemMessage("Your inventory is full.");
			return 0;
		}
		
		ManagedReference<TangibleObject*> extractor = cast<TangibleObject*>(sceneObject);

		if(extractor == NULL)
			return 0;

		uint64 targetID = player->getTargetID();
		ZoneServer* server = player->getZoneServer();

		if (server == NULL)
			return 0;

		ManagedReference<TangibleObject*> target = server->getObject(targetID, true).castTo<TangibleObject*>();

		if (target == NULL){
			player->sendSystemMessage("No target selected.");
			return 0;
		}

		String templateFile = target->getObjectTemplate()->getFullTemplateString();

		if (!templateFile.contains("mobile/") || !target->isCreatureObject() || target->isMount()){
		   player->sendSystemMessage("You cannot extract enzymes from that target."); 
		   return 0;
		}

		CreatureObject* creo = cast<CreatureObject*>( target.get());

		if (creo->isPlayerCreature() || creo->isPet() || creo->isDroidObject() || creo->isVehicleObject()){
			player->sendSystemMessage("You cannot extract enzymes from that target.");
			return 0;
		}

		Creature* critter = cast<Creature*>( creo);

		if (critter == NULL){
			player->sendSystemMessage("You cannot extract enzymes from that target.");
			return 0;
		}

		if (!critter->hasDNA()){
			player->sendSystemMessage("You cannot extract enzymes from that target."); // Go through the same checks as for DNA, because they're good ones.
			return 0;
		}

		if (!creo->isDead()){
			player->sendSystemMessage("The creature must be dead to extract enzymes from it.");
			return 0;
		}

		if (critter->getEnzymeState() == CreatureManager::ENZYMESAMPLED) {
			player->sendSystemMessage("You may only extract enzymes from a creature once.");		
			return 0;		
		}
		
		if (critter->getLevel() > 75){
			player->sendSystemMessage("The creature is of too high a level to extract useable enzymes."); 
			return 0;
		}

		lootManager->createLoot(inventory, "hydrolase_enzymes", 1);
		player->sendSystemMessage("Enzyme sample collected!");

		critter->setEnzymeState(CreatureManager::ENZYMESAMPLED);

		Locker locker(extractor);
		extractor->decreaseUseCount();
		
		return 1;
	}

	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}

