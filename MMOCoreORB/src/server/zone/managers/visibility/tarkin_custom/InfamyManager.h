/*
*   InfamyManager.h        
*  Tarkin's Revenge                
*     July 2019
*/

/*
* Copyright (C) <2019>  <Tarkin's Revenge>
* All Rights Reserved
* This file is not a part of Core3, and as such does not fall under any open-source license agreement.  
* Tarkin's Revenge retains all rights to the source code and no one may reproduce, distribute, or create derivative works from this work.                  
*/

#ifndef INFAMYMANAGER_H_
#define INFAMYMANAGER_H_

#include "server/zone/objects/creature/CreatureObject.h"

namespace server {
namespace zone {
namespace managers {
namespace visibility {
namespace tarkin_custom {

// Infamy is a stat that functions similarly to visibility, and is used to create player bounties upon players participating in the Tarkin's Revenge underground fight club system.

class InfamyManager : public Singleton<InfamyManager>, public Logger, public Object {

	// Any player with a infamy greater than or equal to this amount will be available on the bounty hunter mission terminal as a player bounty.
	float terminalInfamyThreshold;

	// If a players infamy falls below this value they will be removed from the BH terminals
	float falloffThreshold;

	// This is the maximum infamy that can be gained
	float maxInfamy;

	// Number of days before complete infamy decay
	unsigned int totalDecayTimeInDays;

	// Number of seconds before rescheduling the decay event. Must be shorter than 1 day.
	unsigned int infamyDecayTickRate;

	// Amount of infamy to decay per tick
	float infamyDecayPerTick;
	
	// Infamy list that contains all currently online players with infamy.
	VectorMap<uint64, ManagedReference<CreatureObject*> > infamyList;

	// Mutex for the infamyList.
	Mutex infamyListLock;

	// Calculate/generate a reward for the player bounty.
	int calculateReward(CreatureObject* player);

	// Calculates the infamy increase for the player depending on the CL of the defeated mobile and the arena difficulty.
	float calculateInfamyIncrease(CreatureObject* player, CreatureObject* opponent, int arena);

	// Decrease infamy for a player. The player is removed from the infamy list if infamy goes beneath the listing level.
	void decreaseInfamy(CreatureObject* player);

public:

	// Constructor
	InfamyManager();

	float getTerminalInfamyThreshold();

	// Load lua configuration for infamy variables.
	void loadConfiguration();

	// Add player to the infamy list if they still have infamy.
	void addToInfamyList(CreatureObject* player);

	// Remove player from the infamy list.
	void removeFromInfamyList(CreatureObject* player);

	// Increase infamy for a player. The player is added to the infamy list if not already in the list.
	void increaseInfamy(CreatureObject* player, CreatureObject* opponent, int arena);

	// Clear the infamy for a player and remove him/her from the infamy list. Should be used when a player is killed from a bounty hunter with a mission for the player.
	void clearInfamy(CreatureObject* player);

	// Iterates through all currently online players and decays their infamy.
	void performInfamyDecay();

	// Calculates value of player infamy bounty
	int calculateBhInfamyReward(float infamy);

	unsigned int getInfamyDecayTickRate() {
		return infamyDecayTickRate;
	}
};

}
}
}
}
}

using namespace server::zone::managers::visibility::tarkin_custom;

#endif /* INFAMYMANAGER_H_ */
