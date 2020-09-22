/*
				Copyright Tarkin Project
		See file COPYING for copying conditions.*/

#ifndef TARKINCOMMAND_H_
#define TARKINCOMMAND_H_


#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/objects/tangible/components/vendor/VendorDataComponent.h"
#include "server/zone/managers/stringid/StringIdManager.h"
#include "server/zone/managers/auction/AuctionManager.h"
#include "server/zone/managers/auction/AuctionsMap.h"
#include "server/zone/managers/statistics/StatisticsManager.h"
#include "server/zone/objects/mission/MissionTypes.h"

class TarkinCommand : public QueueCommand {
public:

	TarkinCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost == NULL)
			return GENERALERROR;
			
		int adminLevelCheck = ghost->getAdminLevel();

		StringTokenizer args(arguments.toString());

		try {
			String command;

			if(args.hasMoreTokens()){
				args.getStringToken(command);	
			} else {
				throw Exception();
			}
			
			command = command.toLowerCase();
			
			if(command == "aboutme"){
				aboutMe(creature);
			} else if (command == "status"){
				status(creature);
			} else if (command == "houseplop" && adminLevelCheck >= 7){
				housePlop(creature, ghost);
			} else if (command == "wbi"  && adminLevelCheck >= 7){
				worldBuildingItems(creature);
			} else if (command == "spout"  && adminLevelCheck >= 7){
				spOut(creature, target);
			} else if(command == "showruler" && adminLevelCheck >= 7) {
				showRuler(creature);
			} else {
				throw Exception();
			}
			
		} catch (Exception& e){
			StringBuffer text;
			text << endl;
			text << "Tarkin: The Command" << endl;
			text << "- - - - - - - - - - - - - - - - - - -" << endl;
			text << "/tarkin aboutme"  << endl;
			text << "- Provides a list of helpful information about lots, vendors, etc."  << endl;
			text << "/tarkin status"  << endl;
			text << "- Provides information about server uptime and connections online."  << endl;
			//text << "/tarkin newCommand"  << endl;
			//text << "- Description of new command"  << endl;
			text << endl;
			
			if (adminLevelCheck >= 7){
				text << "Tarkin: Admin Commands" << endl;
				text << "- - - - - - - - - - - - - - - - - - -" << endl;
				text << "/tarkin housePlop"  << endl;
				text << "- Calls a menu that allows an admin to place a building where they're standing."  << endl;
				text << "/tarkin wbi"  << endl;
				text << "- Calls a menu that generates special world building items into the inventory. Admin can drop these items outside and use them to output screenplay data to permanently load the non-touchy versions of the objects (filler buildings, walls, etc)."  << endl;
				text << "/tarkin spOut"  << endl;
				text << "- Writes screenplay data to a file on the server in bin/custom_scripts/tmp/. Valid uses are: No Target, Target is Mobile, Target is Tangible Object, Target is World Builder Object."  << endl;
			}
			
			creature->sendSystemMessage(text.toString());
		}

		return SUCCESS;
	}


	// Helpful account information for a player
	void aboutMe(CreatureObject* creature) const {
		if(creature->getZoneServer() == NULL)
			return;

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();
		ManagedReference<AuctionManager*> auctionManager = server->getZoneServer()->getAuctionManager();

		if (ghost == NULL || auctionManager == NULL)
			return;

		ManagedReference<AuctionsMap*> auctionsMap = auctionManager->getAuctionMap();
		if(auctionsMap == NULL)
			return;

		PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();

		if(playerManager == NULL)
			return;

		int lotsRemaining = ghost->getLotsRemaining();


		StringBuffer body;

		body << "Player Name: " << creature->getFirstName() << endl;
		body << "Unused Lots: " << String::valueOf(lotsRemaining) << endl << endl;
		body << "Structures:";

		for (int i = 0; i < ghost->getTotalOwnedStructureCount(); i++) {
			ManagedReference<StructureObject*> structure = creature->getZoneServer()->getObject(ghost->getOwnedStructure(i)).castTo<StructureObject*>();

			int num = i + 1;
			body << endl << String::valueOf(num) << ". ";

			if (structure == NULL) {
				body << "NULL Structure" << endl;
				continue;
			}
			
			String templateFile = structure->getObjectTemplate()->getFullTemplateString();
			StringIdManager* sidman = StringIdManager::instance();
			String buildingName  = "";
			
			if (templateFile.contains("installation")){
				buildingName = sidman->getStringId("@installation_n:" + structure->getObjectNameStringIdName()).toString(); // Factory / Harvester
			} else if (templateFile.contains("building/")){
				buildingName = sidman->getStringId("@building_name:" + structure->getObjectNameStringIdName()).toString();
			} else {
				buildingName = structure->getObjectNameStringIdName(); // Everything else (if anything)
			}

			body << buildingName << endl;
			body << "    Lots: " << String::valueOf(structure->getLotSize()) << endl;
			body << "    Maintenance Pool: " << String::valueOf(structure->getSurplusMaintenance()) << " credits" << endl;
			body << "    Maintenance Rate: " << String::valueOf(structure->getMaintenanceRate()) << " credits/hr" << endl;

			if (structure->getBasePowerRate() > 0) {
				body << "    Power Reserves: " << String::valueOf(structure->getSurplusPower()) << " units" << endl;
				body << "    Power Consumption: " << String::valueOf(structure->getBasePowerRate()) << " units/hr" << endl;
			}

			body << "    Planet: ";
			Zone* zone = structure->getZone();
			if (zone == NULL) {
				body << "NULL" << endl;
			} else {
				body << zone->getZoneName() << endl;
				body << "    World Position: " << structure->getWorldPositionX() << ", " << structure->getWorldPositionY() << endl;
			}
			body << endl;
		}
		body << " - - - - - - - " << endl;
		body << endl;
		body << "Vendors:" << endl;
		body << "Max # of vendors: " << creature->getSkillMod("manage_vendor") << endl;
		body << "Max # of items: " << creature->getSkillMod("vendor_item_limit") << endl;
		body << "Total # of items: " << auctionsMap->getPlayerItemCount(creature) << endl;
		body << endl;

		SortedVector<unsigned long long>* ownedVendors = ghost->getOwnedVendors();
		for (int i = 0; i < ownedVendors->size(); i++) {
			ManagedReference<SceneObject*> vendor = creature->getZoneServer()->getObject(ownedVendors->elementAt(i));

			int num = i + 1;
			body << String::valueOf(num) << ". ";

			if (vendor == NULL) {
				body << "NULL Vendor" << endl << endl;
				continue;
			}

			body << vendor->getDisplayedName() << endl;

			DataObjectComponentReference* data = vendor->getDataObjectComponent();
			if(data == NULL || data->get() == NULL || !data->get()->isVendorData()) {
				body << "    NULL Data Component" << endl << endl;
				continue;
			}

			VendorDataComponent* vendorData = cast<VendorDataComponent*>(data->get());
			if(vendorData == NULL) {
				body << "    NULL Vendor Data Component" << endl << endl;
				continue;
			}

			bool init = false;
			if (vendorData->isInitialized())
				init = true;

			body << "    Initialized? " << (init ? "Yes" : "No");
			body << endl << "    # of items: " << auctionsMap->getVendorItemCount(vendor) << endl;

			float secsRemaining = 0.f;
			if( vendorData->getMaint() > 0 ){
				secsRemaining = (vendorData->getMaint() / vendorData->getMaintenanceRate())*3600;
			}

			body << "    Maintenance Pool: " << String::valueOf(vendorData->getMaint()) << " credits " << endl;
			body << "    Maintenance Rate: " << String::valueOf((int)vendorData->getMaintenanceRate()) << " credits/hr" << endl;

			body << "    Planet: ";
			Zone* zone = vendor->getZone();
			if (zone == NULL){
				body << "NULL" << endl;
			} else if (!vendor->getParent().get()->isCellObject()) {
				body << zone->getZoneName() << endl;
				body << "    World Position: My Inventory" << endl;
			} else {
				body << zone->getZoneName() << endl;
				body << "    World Position: " << vendor->getWorldPositionX() << ", " << vendor->getWorldPositionY() << endl;
			}
			body << endl;
		}
		
		body << " - - - - - - - " << endl;
		body << endl;
		body << "Vetern Rewards Available:" << endl;

		for( int i = 0; i < playerManager->getNumVeteranRewardMilestones(); i++ ){
			int milestone = playerManager->getVeteranRewardMilestone(i);
			String claimedReward = ghost->getChosenVeteranReward(milestone);
			if( claimedReward.isEmpty() )
				body << String::valueOf(milestone) << " days";

			if (i+1 != playerManager->getNumVeteranRewardMilestones()){
				body << ", ";
			} else {
				body << ".";
			}
		}

		ManagedReference<Account*> account = ghost->getAccount();

		body << " I have " << account->getAgeInDays() << " days logged for veteran rewards.";

		// Wrap it up and send it off
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, 0);
		box->setPromptTitle("About Me");
		box->setPromptText(body.toString());
		box->setUsingObject(ghost);
		box->setForceCloseDisabled();

		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}

	// Server status information
	void status(CreatureObject* creature) const {
		if(creature->getZoneServer() == NULL)
			return;

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost == NULL)
			return;

		PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();

		if(playerManager == NULL)
			return;
			
		int adminLevelCheck = ghost->getAdminLevel();
		StringBuffer body;
		Time timestamp;
		timestamp.updateToCurrentTime();

		body << "-- Tarkin's Revenge --" << endl << endl;
		body << "Server Uptime: " << getTimeString(creature->getZoneServer()->getStartTimestamp()->miliDifference(timestamp)) << endl << endl;
		body << "Connections Online: " << String::valueOf(creature->getZoneServer()->getConnectionCount()) << endl;
body << "Most Concurrent (since last reset): " << String::valueOf(creature->getZoneServer()->getMaxPlayers()) << endl;
		body << "Server Cap: " << String::valueOf(creature->getZoneServer()->getServerCap()) << endl << endl << endl;

		if (adminLevelCheck >= 15){
			body << "Admin Only:" << endl;	
			body << " - - - - - - - " << endl;
			body << "Deleted Characters (since last reset): " << String::valueOf(creature->getZoneServer()->getDeletedPlayers()) << endl;
			body << "Total Connections (since last reset): " << String::valueOf(creature->getZoneServer()->getTotalPlayers()) << endl;
			body << endl;endl;

			body << "Missions info (since last reset): " << endl;
			body << StatisticsManager::instance()->getStatistics() << endl << endl;
		}

		// Wrap it up and send it off
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, 0);
		box->setPromptTitle("Tarkin's Revenge: Server Status");
		box->setPromptText(body.toString());
		box->setUsingObject(ghost);
		box->setForceCloseDisabled();

		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
	
	// Opens a window that allows an admin to place a structure from the list
	void housePlop(CreatureObject* creature, PlayerObject* ghost) const {
		// For an admin-only command
		
		if (creature->getParent() != NULL){
			creature->sendSystemMessage("You must be outside to place a structure.");
			throw Exception();
		}

		Lua* lua = DirectorManager::instance()->getLuaInstance();

		Reference<LuaFunction*> housePlop = lua->createFunction("HousePlop", "openWindow", 0);
		*housePlop << creature;

		housePlop->callFunction();
	}

	// Shows a green line coming from the player
	void showRuler(CreatureObject* creature) const {
		String emoteEffectPath = "clienteffect/house_plop_ruler.cef";
		creature->playEffect(emoteEffectPath, "" );
	}
	
	// Opens a window that despenses special world builder items for admin use
	void worldBuildingItems(CreatureObject* creature) const {
		Lua* lua = DirectorManager::instance()->getLuaInstance();

		Reference<LuaFunction*> adminDecor = lua->createFunction("AdminDecor", "openWindow", 0);
		*adminDecor << creature;

		adminDecor->callFunction();
	}
	
	// Outputs a screenplay call spawnSceneObject("planet", "staticObjectTemplateFilePathAndName", x, z, y, cellNumber, dw, dx, dy, dz>
	// to file on server at Core3/MMOCoreORB/bin/custom_scripts/tmp/spOut.lua
	void spOut(CreatureObject* creature, const uint64& target) const {
		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target, false);

		String planetName = "";
		String templateFile = "";
		String outputFile = "custom_scripts/tmp/spOut-my-position.lua";
		int textType = 0;

		if (object == NULL){
			planetName = creature->getZone()->getZoneName();
			textType = 4;
		} else {
			planetName = object->getZone()->getZoneName();
			templateFile = object->getObjectTemplate()->getFullTemplateString();
			
			// Beause junk dealer, vehicle, and vendor mobiles crash the server if we try to use them as an AI agent when getting the mob name.
			if (templateFile.contains("junk") || templateFile.contains("vehicle") || templateFile.contains("vendor")){
			   creature->sendSystemMessage("Error: Unsupported object. (" + templateFile + ")");
			   return; 
			}
			
			if (templateFile.contains("hondo/decoration")) {
				textType = 3;
			} else if (templateFile.contains("object/tangible")) {
				textType = 2;
			} else if (object->isCreatureObject()){
				textType = 1;
			}
		}

		StringBuffer text;

		if (textType == 1){
			int angle = object->getDirectionAngle();

			AiAgent* mob = object.castTo<AiAgent*> ();
			CreatureTemplate* creatureTemplate = mob->getCreatureTemplate();
			String mobileName = creatureTemplate->getTemplateName();

			text << "spawnMobile(\"" << planetName << "\", " <<  "\"" << mobileName << "\", 1, ";

			if (object->getParent() != NULL && object->getParent().get()->isCellObject()) {
				// Inside
				ManagedReference<CellObject*> cell = cast<CellObject*>( object->getParent().get().get());
				Vector3 cellPosition = object->getPosition();

				text << cellPosition.getX() << ", " << cellPosition.getZ() << ", " << cellPosition.getY() << ", " << angle << ", " << cell->getObjectID() << ")";
			}else {
				// Outside
				Vector3 worldPosition = object->getWorldPosition();

				text << worldPosition.getX() << ", " << worldPosition.getZ() << ", " << worldPosition.getY() << ", " << angle << ", " << "0" << ")";
			}
			
			outputFile = "custom_scripts/tmp/spOut-mobiles.lua";
			// Outputting: spawnMobile("planet", "mobileTemplate", 1, x, z, y, heading, cellid)
		} else if (textType == 2){
			text << "spawnSceneObject(\"" << planetName << "\", \"" << templateFile << "\", ";

			if (object->getParent() != NULL && object->getParent().get()->isCellObject()) {
				// Inside
				ManagedReference<CellObject*> cell = cast<CellObject*>( object->getParent().get().get());
				Vector3 cellPosition = object->getPosition();

				text << cellPosition.getX() << ", " << cellPosition.getZ() << ", " << cellPosition.getY() << ", " << cell->getObjectID() << ", ";
			}else {
				// Outside
				Vector3 worldPosition = object->getWorldPosition();
				text << worldPosition.getX() << ", " << worldPosition.getZ() << ", " << worldPosition.getY() << ", " << "0" << ", ";
			}

			Quaternion* dir = object->getDirection();
			text << dir->getW() << ", " << dir->getX() << ", " << dir->getY() << ", " << dir->getZ() << ") -- angle " << object->getDirectionAngle();;
			
			outputFile = "custom_scripts/tmp/spOut-objects.lua";
			// Outputting: spawnSceneObject("planet", "objectTemplateFilePathAndName", x, z, y, cellNumber, dw, dx, dy, dz>) -- angle #
		} else if (textType == 3){
			// Examples:
			// object/tangible/hondo/decoration/building/tatooine/filler_building_tatt_style01_01.lua
			// object/tangible/hondo/decoration/structure/tatooine/antenna_tatt_style_2.lua
			// get changed to
			// object/building/tatooine/filler_building_tatt_style01_01.lua
			// object/static/structure/tatooine/antenna_tatt_style_2.iff

			if (templateFile.contains("decoration/building")){
				templateFile = templateFile.replaceAll("tangible/hondo/decoration/", ""); // Fix path for filler type buildings
			} else {
				templateFile = templateFile.replaceAll("tangible/hondo/decoration", "static"); // Fix path for static objects
			}

			text << "spawnSceneObject(\"" << planetName << "\", \"" << templateFile << "\", ";

			if (object->getParent() != NULL && object->getParent().get()->isCellObject()) {
				// Inside
				ManagedReference<CellObject*> cell = cast<CellObject*>( object->getParent().get().get());
				Vector3 cellPosition = object->getPosition();

				text << cellPosition.getX() << ", " << cellPosition.getZ() << ", " << cellPosition.getY() << ", " << cell->getObjectID() << ", ";
			}else {
				// Outside
				Vector3 worldPosition = object->getWorldPosition();
				text << worldPosition.getX() << ", " << worldPosition.getZ() << ", " << worldPosition.getY() << ", " << "0" << ", ";
			}

			Quaternion* dir = object->getDirection();

			text << dir->getW() << ", " << dir->getX() << ", " << dir->getY() << ", " << dir->getZ() << ") -- angle " << object->getDirectionAngle();
			
			outputFile = "custom_scripts/tmp/spOut-static-objects.lua";
			// Outputting: spawnSceneObject("planet", "staticObjectTemplateFilePathAndName", x, z, y, cellNumber, dw, dx, dy, dz>) -- angle #
		} else if (textType == 4){
			int angle = creature->getDirectionAngle();

			text << "spawnMobile(\"" << planetName << "\", " <<  "\"commoner" << "\", 1, ";

			if (creature->getParent() != NULL && creature->getParent().get()->isCellObject()) {
				// Inside
				ManagedReference<CellObject*> cell = cast<CellObject*>( creature->getParent().get().get());
				Vector3 cellPosition = creature->getPosition();

				text << cellPosition.getX() << ", " << cellPosition.getZ() << ", " << cellPosition.getY() << ", " << angle << ", " << cell->getObjectID() << ")";
			}else {
				// Outside
				Vector3 worldPosition = creature->getWorldPosition();

				text << worldPosition.getX() << ", " << worldPosition.getZ() << ", " << worldPosition.getY() << ", " << angle << ", " << "0" << ")";
			}
			
			// Outputting: spawnMobile("planet", "commoner", 1, x, z, y, heading, cellid)
		} else {
			creature->sendSystemMessage("Error: Unsupported usage. Valid uses are: No Target, Target is Mobile, Target is Tangible Object, Target is World Builder Object.");
			return;
		}

		// Write the data to the file
		File* file = new File(outputFile);
		FileWriter* writer = new FileWriter(file, true); // true for appending new lines

		writer->writeLine(text.toString());

		writer->close();
		delete file;
		delete writer;

		creature->sendSystemMessage("Data written to Core3/MMOCoreORB/bin/" + outputFile + ".");
		
	}

	String getTimeString(uint64 timestamp) const {
		int seconds = timestamp / 1000;

		int days = seconds / 86400;
		seconds -= days * 86400;

		int hours = seconds / 3600;
		seconds -= hours * 3600;

		int minutes = seconds / 60;
		seconds -= minutes * 60;

		StringBuffer buffer;

		if (days > 0)
			buffer << days << "d, ";

		if (hours > 0)
			buffer << hours << "h, ";

		if (minutes > 0)
			buffer << minutes << "m, ";

		if (seconds > 0)
			buffer << seconds << "s";

		return buffer.toString();
	}
};

#endif //TARKINCOMMAND_H_
