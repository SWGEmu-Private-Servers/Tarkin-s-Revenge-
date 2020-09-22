/*
 * IncubationLabratory.h
 * Yes, I know it's spelled "laboratory"
 *  Tarkin's Revenge
 *     May 2019
 */

#ifndef INCUBATIONLABRATORY_H_
#define INCUBATIONLABRATORY_H_

#include "SharedLabratory.h"

namespace server {
namespace zone {
namespace managers {
namespace crafting {
namespace labratories {

class IncubationLabratory: public SharedLabratory {

public:
	IncubationLabratory();
	virtual ~IncubationLabratory();
	void setInitialCraftingValues(TangibleObject* prototype, ManufactureSchematic* manufactureSchematic, int assemblySuccess);
	void experimentRow(CraftingValues* craftingValues,int rowEffected, int pointsAttempted, float failure, int experimentationResult);
	void initialize(ZoneServer* server);
	int getCreationCount(ManufactureSchematic* manufactureSchematic);
};

}
}
}
}
}

using namespace server::zone::managers::crafting::labratories;

#endif /* INCUBATIONLABRATORY_H_ */
