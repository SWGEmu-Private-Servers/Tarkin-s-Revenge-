/*
*  InfamyDecayTask.h       
*  Tarkin's Revenge                
*     July 2019 
*/

/*
* Copyright (C) <2019>  <Tarkin's Revenge>
* All Rights Reserved
* This file is not a part of Core3, and as such does not fall under any open-source license agreement.  
* Tarkin's Revenge retains all rights to the source code and no one may reproduce, distribute, or create derivative works from this work.                  
*/

#ifndef INFAMYDECAYTASK_H_
#define INFAMYDECAYTASK_H_

#include "server/zone/managers/visibility/tarkin_custom/InfamyManager.h"

namespace server {
namespace zone {
namespace managers {
namespace visibility {
namespace tarkin_custom {
namespace tasks {

class InfamyDecayTask : public Task {
public:
	InfamyDecayTask() : Task() {
	}

	void run() {
		InfamyManager::instance()->performInfamyDecay();
		reschedule(InfamyManager::instance()->getInfamyDecayTickRate() * 1000);
	}
};

}
}
}
}
}
}

using namespace server::zone::managers::visibility::tarkin_custom::tasks;

#endif /* INFAMYDECAYTASK_H_ */
