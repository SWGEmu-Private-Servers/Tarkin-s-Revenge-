/*
 * IncubatorEvent.h
 *
 *  Tarkin's Revenge
 *     June 2019
 */

#ifndef INCUBATOREVENT_H_
#define INCUBATOREVENT_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/tangible/deed/pet/PetDeed.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/tangible/component/genetic/IncubationComponent.h"

class IncubatorEvent : public Task {
	ManagedWeakReference<CreatureObject*> creo;
	ManagedWeakReference<SceneObject*> tool;
	int phase;

public:
	IncubatorEvent(CreatureObject* player, SceneObject* sceneObject, int phaseNum) : Task() {
		creo = player;
		tool = sceneObject;
		phase = phaseNum;
	}

	void run() {
		ManagedReference<SceneObject*> hopper = tool.get();

		if (hopper == NULL)
			return;

		ManagedReference<CreatureObject*> player = creo.get();

		// Verify that everything exists as it should
		if (player != NULL) {
			SceneObject* inventory = player->getSlottedObject("inventory");

			ManagedReference<SceneObject*> deed = NULL;
			ManagedReference<SceneObject*> egg = NULL;
			ManagedReference<PetDeed*> petdeed = NULL;
			ManagedReference<IncubationComponent*> eggObject = NULL;

			for (int i = 0; i < hopper->getContainerObjectsSize(); i++) {
				SceneObject* contentItem = hopper->getContainerObject(i);
				if(contentItem->getServerObjectCRC() == 0x49F18C79) {
					egg = contentItem;
					eggObject = egg.castTo<IncubationComponent*>();
				} else if (contentItem->getGameObjectType() == SceneObjectType::PETDEED) {
					deed = contentItem;
					petdeed = deed.castTo<PetDeed*>();
				}
			}

			if (eggObject == NULL || petdeed == NULL) {
				player->sendSystemMessage("Error: An unexpected error occurred.  Seek assistance from an Admin.");
				return;
			}

			// Collect the data
			int reference = 0;
			int purity = 0;
			int mutagen = 0;
			int baseline = 1;
			StringBuffer tableName;
			StringBuffer tempCRC;
			String mod;
			String modDesc;
			String schematic = "";
			String creatureTemplate = "";
			uint32 crc = 0;
			SharedObjectTemplate* templ = petdeed->getObjectTemplate();
		
			if (phase == 1) {
				reference = eggObject->getPhaseOneReference();
				purity = eggObject->getPhaseOnePurity();
				mutagen = eggObject->getPhaseOneMutagen();
				baseline = eggObject->getPhaseOneBaseline();
			} else if (phase == 2) {
				reference = eggObject->getPhaseTwoReference();
				purity = eggObject->getPhaseTwoPurity();
				mutagen = eggObject->getPhaseTwoMutagen();
				baseline = eggObject->getPhaseTwoBaseline();
			} else if (phase == 3) {
				reference = eggObject->getPhaseThreeReference();
				purity = eggObject->getPhaseThreePurity();
				mutagen = eggObject->getPhaseThreeMutagen();
				baseline = eggObject->getPhaseThreeBaseline();
			}

			// Re-confirm that values are within range
			if (reference > 27) {
				reference = 27;
			} else if (reference < 0) {
				reference = 0;
			}

			if (templ != NULL) {
				crc = templ->getFullTemplateString().hashCode();
			}
	
			tempCRC << crc;
			creatureTemplate = tempCRC.toString();

			tableName << "phase_" << phase << "_" << reference;

			Lua* lua = new Lua();
			lua->init();

			lua->runFile("scripts/custom_scripts/screenplays/tools/incubator_table.lua");

			LuaObject table = lua->getGlobalObject(tableName.toString());
			
			if (table.isValidTable() && table.getTableSize() > 0) {	
				mod = table.getStringAt(1);				
				modDesc = table.getStringAt(2);
			}

			delete lua;	

			// Modify the deed
			int level = petdeed->getLevel();
			int armor = petdeed->getArmor();
			float speed = petdeed->getAttackSpeed();
			float newSpeed;
			float hit = petdeed->getHitChance();
			int dmgMin = petdeed->getMinDamage();
			int dmgMax = petdeed->getMaxDamage();
			int health = petdeed->getHealth();
			int action  = petdeed->getAction();
			int mind = petdeed->getMind();
			float kinetic = petdeed->getKinetic();
			float energy = petdeed->getEnergy();
			float blast = petdeed->getBlast();
			float electric = petdeed->getElectric();
			float heat = petdeed->getHeat();
			float cold = petdeed->getCold();
			float acid = petdeed->getAcid();
			float stun = petdeed->getStun();
			float saber = petdeed->getSaber();
		
			if (dmgMin < 1) {
				dmgMin = 1;
			}
			if (dmgMax < 1) {
				dmgMax = 1;
			}
			if (health < 1) {
				health = 1;
			}
			if (action < 1) {
				action  = 1;
			}
			if (mind < 1) {
				mind = 1;
			}
			if (kinetic < 0) {
				kinetic = 0;
			}
			if (energy < 0) {
				energy = 0;
			}
			if (blast < 0) {
				blast = 0;
			}
			if (electric < 0) {
				electric = 0;
			}
			if (heat < 0) {
				heat = 0;
			}
			if (cold < 0) {
				cold = 0;
			}
			if (acid < 0) {
				acid = 0;
			}
			if (stun < 0) {
				stun = 0;
			}
			if (saber < 0) {
				saber = 0;
			}

			if(mod == "1") {
				if (level > 1) {
					level -= 1;
					petdeed->setLevel((int)level);
				} else {
					modDesc = "Pet level was already the lowest level possible";
				}
			} else if(mod == "2") {
				if (armor < 1) {
					armor = 1;
					petdeed->setArmor(armor);
				} else {
					modDesc = "Pet already had light armor";
				}
			} else if(mod == "3") {
				if (speed > 1.0f) {
					newSpeed = speed - (speed * 0.03f);
					if (newSpeed <= 1.0f) {
						newSpeed = 1.0;
						modDesc = "Speed capped at 1 attack speed";
					} else {
						petdeed->setAttackSpeed(newSpeed);
					}
				} else {
					modDesc = "Pet was already speed capped";
				}
			} else if(mod == "4") {
				speed = petdeed->getAttackSpeed();
				if (speed > 1.0f) {
					newSpeed = speed - (speed * 0.06f);
					if (newSpeed <= 1.0f) {
						newSpeed = 1.0;
						modDesc = "Speed capped at 1 attack speed";
					} else {
						petdeed->setAttackSpeed(newSpeed);
					}
				} else {
					modDesc = "Pet was already speed capped";
				}
			} else if(mod == "5") {					
				hit = hit * 1.05;
				petdeed->setHitChance(hit);
			} else if(mod == "6") {
				hit = hit * 1.08;
				petdeed->setHitChance(hit);					 				
			} else if(mod == "7") {
				hit = hit * 1.11;
				petdeed->setHitChance(hit);
			} else if(mod == "8") {
				hit = hit * 1.22;
				petdeed->setHitChance(hit);
			} else if(mod == "9") {
				dmgMin = dmgMin * 1.01;
				dmgMax = dmgMax * 1.01;
				petdeed->setMinDamage(dmgMin);
				petdeed->setMaxDamage(dmgMax);
			} else if(mod == "10") {
				dmgMin = dmgMin * 1.02;
				dmgMax = dmgMax * 1.02;
				petdeed->setMinDamage(dmgMin);
				petdeed->setMaxDamage(dmgMax);
			} else if(mod == "11") {
				dmgMin = dmgMin * 1.03;
				dmgMax = dmgMax * 1.03;
				petdeed->setMinDamage(dmgMin);
				petdeed->setMaxDamage(dmgMax);
			} else if(mod == "12") {
				dmgMin = dmgMin * 1.04;
				dmgMax = dmgMax * 1.04;
				petdeed->setMinDamage(dmgMin);
				petdeed->setMaxDamage(dmgMax);
			} else if(mod == "13") {
				dmgMin = dmgMin * 1.05;
				dmgMax = dmgMax * 1.05;
				petdeed->setMinDamage(dmgMin);
				petdeed->setMaxDamage(dmgMax);
			} else if(mod == "14") {
				health = health * 1.02;
				action = action * 1.02;
				mind  = mind * 1.02;
				petdeed->setHealth((int)health);
				petdeed->setAction((int)action);
				petdeed->setMind((int)mind);
			} else if(mod == "15") {
				health = health * 1.04;
				action = action * 1.04;
				mind  = mind * 1.04;
				petdeed->setHealth((int)health);
				petdeed->setAction((int)action);
				petdeed->setMind((int)mind);
			} else if(mod == "16") { 
				health = health * 1.06;
				action = action * 1.06;
				mind  = mind * 1.06;
				petdeed->setHealth((int)health);
				petdeed->setAction((int)action);
				petdeed->setMind((int)mind);
			} else if(mod == "17") { 
				health = health * 1.08;
				action = action * 1.08;
				mind  = mind * 1.08;
				petdeed->setHealth((int)health);
				petdeed->setAction((int)action);
				petdeed->setMind((int)mind);
			} else if(mod == "18") { 
				if (kinetic < 195) {
					kinetic = kinetic + 10.0f;
					if (kinetic > 195) {
						kinetic = 195;
						modDesc = "Kinetic resist capped at 195";
						petdeed->setKinetic((int)kinetic);
					} else {
						petdeed->setKinetic((int)kinetic);
					}
				} else {
					modDesc = "Pet was already kinetic resist capped";
					}					
			} else if(mod == "19") {
				if (kinetic < 195) {
					kinetic = kinetic + 20.0f;
					if (kinetic > 195) {
						kinetic = 195;
						modDesc = "Kinetic resist capped at 195";
						petdeed->setKinetic((int)kinetic);
					} else {
						petdeed->setKinetic((int)kinetic);
					}
				} else {
					modDesc = "Pet was already kinetic resist capped";
				}					
			} else if(mod == "20") {
				if (energy < 195) {
					energy = energy + 10.0f;
					if (energy > 195) {
						energy = 195;
						modDesc = "Energy resist capped at 195";
						petdeed->setEnergy((int)energy);
					} else {
						petdeed->setEnergy((int)energy);
					}
				} else {
					modDesc = "Pet was already energy resist capped";
				}					
			} else if(mod == "21") {
				if (energy < 195) {
					energy = energy + 20.0f;
					if (energy > 195) {
						energy = 195;
						modDesc = "Energy resist capped at 195";
						petdeed->setEnergy((int)energy);
					} else {
						petdeed->setEnergy((int)energy);
					}
				} else {
					modDesc = "Pet was already energy resist capped";
				}					
			} else if(mod == "22") {
				if (blast < 195) {
					blast = blast + 10.0f;
					if (blast > 195) {
						blast = 195;
						modDesc = "Blast resist capped at 195";
						petdeed->setBlast((int)blast);
					} else {
						petdeed->setBlast((int)blast);
					}
				} else {
					modDesc = "Pet was already blast resist capped";
				}					
			} else if(mod == "23") {
				if (electric < 195) {
					electric = electric + 10.0f;
					if (electric > 195) {
						electric = 195;
						modDesc = "Electricity resist capped at 195";
						petdeed->setElectric((int)electric);
					} else {
						petdeed->setElectric((int)electric);
					}
				} else {
					modDesc = "Pet was already electricity resist capped";
				}					
			} else if(mod == "24") {
				if (heat < 195) {
					heat = heat + 10.0f;
					if (heat > 195) {
						heat = 195;
						modDesc = "Heat resist capped at 195";
						petdeed->setHeat((int)heat);
					} else {
						petdeed->setHeat((int)heat);
					}
				} else {
					modDesc = "Pet was already heat resist capped";
				}					
			} else if(mod == "25") {
				if (cold < 195) {
					cold = cold + 10.0f;
					if (cold > 195) {
						cold = 195;
						modDesc = "Cold resist capped at 195";
						petdeed->setCold((int)cold);
					} else {
						petdeed->setCold((int)cold);
					}
				} else {
					modDesc = "Pet was already cold resist capped";
				}					
			} else if(mod == "26") {
				if (acid < 195) {
					acid = acid + 10.0f;
					if (acid > 195) {
						acid = 195;
						modDesc = "Acid resist capped at 195";
						petdeed->setAcid((int)acid);
					} else {
						petdeed->setAcid((int)acid);
					}
				} else {
					modDesc = "Pet was already acid resist capped";
				}					
			} else if(mod == "27") {
				if (stun < 195) {
					stun = stun + 10.0f;
					if (stun > 195) {
						stun = 195;
						modDesc = "Stun resist capped at 195";
						petdeed->setStun((int)stun);
					} else {
						petdeed->setStun((int)stun);
					}
				} else {
					modDesc = "Pet was already stun resist capped";
					}					
			} else if(mod == "28") {
				if (saber < 30) {
					saber = saber + 10.0f;
					if (saber > 30) {
						saber = 30;
						modDesc = "Lightsaber resist capped at 30";
						petdeed->setSaber((int)saber);
					} else {
						petdeed->setSaber((int)saber);
					}
				} else {
					modDesc = "Pet was already lightsaber resist capped";
				}					
			}

			StringBuffer modMsg;
			modMsg << "Phase " << phase << " complete! Your pet deed has been modified: " << modDesc << ".";
			player->sendSystemMessage(modMsg.toString());

			// Check for epiphanies
			if (reference == baseline) { // Epiphany chance exists

				if (purity > 10) {
					purity = 10;
				}

				if (mutagen > 10) {
					mutagen = 10;
				}

				Lua* luaEpi = new Lua();
				luaEpi->init();
				luaEpi->runFile("scripts/custom_scripts/screenplays/tools/epiphany_schematic_table.lua");

				if (10-purity == Math::max(((int)System::random(11-purity))-1,0)) { // Roll for a regular epiphany
				
					LuaObject epiTable = luaEpi->getGlobalObject("beSchematicGroup");

					if (epiTable.isValidTable() && epiTable.getTableSize() > 0) {
					
						int randomNum = System::random(epiTable.getTableSize()) + 1;
						schematic = epiTable.getStringAt(randomNum); // Choose a random schematic from that group as the reward

						if (schematic != "") {

							// Grant the loot schematic
							ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

							if (inventory != NULL) {
								if (!inventory->isContainerFullRecursive()) {
									ManagedReference<TangibleObject *> rewardSchematic = (player->getZoneServer()->createObject(schematic.hashCode())).castTo<TangibleObject*>();
									if (rewardSchematic != NULL) {
										Locker locker(rewardSchematic);
										if (inventory->transferObject(rewardSchematic, -1, true)) {
											rewardSchematic->sendTo(player, rewardSchematic);
											player->sendSystemMessage("You've had an epiphany! A rare pet schematic has been added to your inventory.");					
										} else {
											rewardSchematic->destroyObjectFromDatabase(rewardSchematic);
											abort();
										}
									}
								} else {
									player->sendSystemMessage("Your inventory is full, you cannot accept an epiphany schematic.  Better luck next time!");
								}
							} 
						}
					}
				}

				if (10-mutagen == Math::max(((int)System::random(11-mutagen))-1,0)) { // Roll and check for a mutant epiphany
					StringBuffer schematicGroup;
					schematicGroup << "be" << creatureTemplate << "SchematicGroup";

					LuaObject mutantTable = luaEpi->getGlobalObject(schematicGroup.toString());

					if (mutantTable.isValidTable() && mutantTable.getTableSize() > 0) {
						schematic = mutantTable.getStringAt(1); // Choose the schematic from that group as the reward

						if (schematic != "") {

							// Grant the loot schematic
							ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

							if (inventory != NULL) {
								if (!inventory->isContainerFullRecursive()) {
									ManagedReference<TangibleObject *> rewardSchematic = (player->getZoneServer()->createObject(schematic.hashCode())).castTo<TangibleObject*>();
									if (rewardSchematic != NULL) {
										Locker locker(rewardSchematic);
										if (inventory->transferObject(rewardSchematic, -1, true)) {
											rewardSchematic->sendTo(player, rewardSchematic);
											player->sendSystemMessage("You've had an epiphany! A new mutant schematic has been added to your inventory.");					
										} else {
											rewardSchematic->destroyObjectFromDatabase(rewardSchematic);
											abort();
										}
									}
								} else {
									player->sendSystemMessage("Your inventory is full, you cannot accept a mutant schematic.  Better luck next time!");					
								}
							}
						}
					}
				}

				delete luaEpi; 
			} 

			// Do final phase activities
			if (phase == 3) { 

				// Delete the egg
				Locker locker(egg);
				egg->destroyObjectFromWorld(true);
				egg->destroyObjectFromDatabase(true);

				// Mark the pet deed as incubated
				petdeed->setSliced(true);
				String deedName = petdeed->getCustomObjectName().toString() + " (Incubated)";
				petdeed->setCustomObjectName(deedName, true);

				// Remove tasks
				hopper->removePendingTask("incubating");
				hopper->removePendingTask("incubating2");
				hopper->removePendingTask("incubating3");

				// Allow the hopper to be unlocked now that incubation is complete
				ContainerPermissions* itemPerms = hopper->getContainerPermissions();
				itemPerms->setInheritPermissionsFromParent(true);
				itemPerms->clearDefaultDenyPermission(ContainerPermissions::OPEN);
				itemPerms->clearDefaultDenyPermission(ContainerPermissions::MOVECONTAINER);
				itemPerms->setDefaultAllowPermission(ContainerPermissions::OPEN);
				itemPerms->setDefaultAllowPermission(ContainerPermissions::MOVECONTAINER);

				player->sendSystemMessage("You may now remove your pet deed from the incubator's hopper.");
			}
		} 
	}
};

#endif /*INCUBATOREVENT_H_*/
