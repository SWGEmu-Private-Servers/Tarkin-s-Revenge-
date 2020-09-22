/*
 * IncubatorAnnouncementEvent.h
 *
 *  Tarkin's Revenge
 *     June 2019
 */

#ifndef INCUBATORANNOUNCEMENTEVENT_H_
#define INCUBATORANNOUNCEMENTEVENT_H_

#include "server/zone/objects/creature/CreatureObject.h"

class IncubatorAnnouncementEvent : public Task {
	ManagedWeakReference<CreatureObject*> creo;
	int phase;

public:
	IncubatorAnnouncementEvent(CreatureObject* player, int phaseNum) : Task() {
		creo = player;
		phase = phaseNum;
	}

	void run() {

		ManagedReference<CreatureObject*> player = creo.get();

		if (player != NULL) {

			StringBuffer msg;
			msg << "Beginning Incubation Phase " << phase << ", please wait...";
			player->sendSystemMessage(msg.toString());
			
			StringBuffer phaseTask;
			phaseTask << "phase" << phase;

			player->removePendingTask(phaseTask.toString());
		}
	}
};

#endif /*INCUBATORANNOUNCEMENTEVENT_H_*/
