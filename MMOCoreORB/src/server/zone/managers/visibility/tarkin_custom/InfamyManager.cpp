/*
*  InfamyManager.cpp        
*   Tarkin's Revenge                
*     July 2019              
*/

/*
* Copyright (C) <2019>  <Tarkin's Revenge>         
*/

#include "InfamyManager.h"
#include "server/zone/managers/mission/MissionManager.h"
#include "server/zone/managers/collision/CollisionManager.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/visibility/tarkin_custom/tasks/InfamyDecayTask.h"
#include "server/zone/Zone.h"

// Infamy is a stat that functions similarly to visibility, and is used to create player bounties upon players participating in the Tarkin's Revenge underground fight club system.

float InfamyManager::calculateInfamyIncrease(CreatureObject* player, CreatureObject* opponent, int arena) {
	Zone* zone = player->getZone();

	float infamyIncrease = 0;

	if (zone == NULL ) {
		return infamyIncrease;
	} else {
		if (opponent->getLevel() < 300) { // Non-boss mobiles will all be < 300
			infamyIncrease += ((opponent->getLevel()*0.06f)*arena);
		} else { // Boss mobiles give a triple infamy hit
			infamyIncrease += (((opponent->getLevel()*0.06f)*3)*arena);		
		}
	}
	return infamyIncrease;
}

void InfamyManager::decreaseInfamy(CreatureObject* player) {

	Reference<PlayerObject*> ghost = player->getSlottedObject("ghost").castTo<PlayerObject*>();

	if (ghost != NULL) {
		Locker locker(ghost);
		if (ghost->getInfamy() > 0)
		{
			float infamyDecrease = (((ghost->getLastInfamyUpdateTimestamp().miliDifference() / 1000.0f) / infamyDecayTickRate) * infamyDecayPerTick);

			if (ghost->getInfamy() <= infamyDecrease) {
				clearInfamy(player);
			} else {
				ghost->setInfamy(ghost->getInfamy() - infamyDecrease);
			}
		}
	}
}

InfamyManager::InfamyManager() : Logger("InfamyManager") {
	loadConfiguration();

	Reference<Task*> decayTask = new InfamyDecayTask();
	decayTask->schedule(infamyDecayTickRate * 1000);
}

void InfamyManager::addToInfamyList(CreatureObject* player) {
	Reference<PlayerObject*> ghost = player->getSlottedObject("ghost").castTo<PlayerObject*>();

	if (ghost != NULL) {
		decreaseInfamy(player);

		Locker locker(&infamyListLock);

		if ((ghost->getInfamy() > 0) && (!infamyList.contains(player->getObjectID()))) {
			infamyList.put(player->getObjectID(), player);
		}

		locker.release();
	}
}

float InfamyManager::getTerminalInfamyThreshold() {
	return terminalInfamyThreshold;
}

void InfamyManager::removeFromInfamyList(CreatureObject* player) {
	Locker locker(&infamyListLock);

	if (infamyList.contains(player->getObjectID())) {
		infamyList.drop(player->getObjectID());
	}
}

void InfamyManager::increaseInfamy(CreatureObject* player, CreatureObject* opponent, int arena) {
	Reference<PlayerObject*> ghost = player->getSlottedObject("ghost").castTo<PlayerObject*>();

	if (ghost != NULL && !ghost->hasGodMode()) {
		Locker locker(ghost);
		decreaseInfamy(player);

		float newInfamy = ghost->getInfamy() + (calculateInfamyIncrease(player, opponent, arena)); // Calculate new total infamy
		newInfamy = Math::min(maxInfamy,  newInfamy); // Cap infamy

		ghost->setInfamy(newInfamy);

		locker.release();
		
		float terminalInfamyThreshold = getTerminalInfamyThreshold();
		ZoneServer* zoneServer = player->getZoneServer();
		MissionManager* missionManager = zoneServer->getMissionManager();
		addToInfamyList(player);
		uint64 id = player->getObjectID();

		if (newInfamy >= terminalInfamyThreshold){
			float bhInfamyReward = calculateBhInfamyReward(newInfamy);
			if (missionManager != nullptr && missionManager->hasPlayerBountyTargetInList(id)) { // Update bounty reward if player is in list for an infamy mission
				int missionType = missionManager->getPlayerBountyType(id);
				if (missionType == 2) {
					missionManager->updatePlayerBountyReward(id, bhInfamyReward, 2);
				} 
			} else { // Add player to list for an infamy mission, if they aren't already on the list
				missionManager->addPlayerToBountyList(id, bhInfamyReward, 2); 
			}
		}
	}
}

void InfamyManager::clearInfamy(CreatureObject* player) {
	Reference<PlayerObject*> ghost = player->getSlottedObject("ghost").castTo<PlayerObject*>();

	if (ghost != NULL && !ghost->hasGodMode()) {   

		Locker locker(ghost);
		ghost->setInfamy(0);
		locker.release();

		removeFromInfamyList(player);
	}
}

void InfamyManager::performInfamyDecay() {
	Locker locker(&infamyListLock);

	for (int i = 0; i < infamyList.size(); i++) {
		ManagedReference<CreatureObject*> player = infamyList.get(i);
		decreaseInfamy(player);
	}
}

int InfamyManager::calculateBhInfamyReward(float infamy) {
	int minReward = 75000; // Minimum reward for an infamy player bounty
	int maxReward = 1250000; //Maximum reward for an infamy player bounty

	int reward = infamy * 500;

	if (reward < minReward)
		reward = minReward;
	
	if (reward > maxReward)
		reward = maxReward;

	return reward;
}

void InfamyManager::loadConfiguration() {
	try {

		Lua* lua = new Lua();
		lua->init();

		lua->runFile("scripts/managers/tarkin_custom/infamy_manager.lua");

		maxInfamy  = (float)lua->getGlobalInt(String("maxInfamy"));
		terminalInfamyThreshold = (float)lua->getGlobalInt(String("termThreshold"));
		falloffThreshold = (float)lua->getGlobalInt(String("falloffThreshold"));

		totalDecayTimeInDays = lua->getGlobalInt(String("totalDecayTimeInDays"));
		infamyDecayTickRate = lua->getGlobalInt(String("tickRateInSeconds"));

		infamyDecayPerTick = (maxInfamy / ((totalDecayTimeInDays * (float)(60*60*24) / infamyDecayTickRate)));

		delete lua;

	} catch (Exception& e) {
		error(e.getMessage());
	}
}
