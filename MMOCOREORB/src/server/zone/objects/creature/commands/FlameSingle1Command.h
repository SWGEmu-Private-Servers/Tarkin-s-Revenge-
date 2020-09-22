/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FLAMESINGLE1COMMAND_H_
#define FLAMESINGLE1COMMAND_H_

#include "CombatQueueCommand.h"

class FlameSingle1Command : public CombatQueueCommand {
public:

	FlameSingle1Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isFlameThrower() && !weapon->isCarboniteRifle() && !weapon->isLavaCannon() && !weapon->isRepublicFlamer() && !weapon->isReaperCannon())
			return INVALIDWEAPON;

		return doCombatAction(creature, target);
	}

};

#endif //FLAMESINGLE1COMMAND_H_
