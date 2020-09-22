-- //////////////////////////////////////////////////////
-- //           weddingScavHuntConvoHandler.lua        //
-- //                  Tarkin's Revenge                //
-- // ParadymShift & Liakhara's wedding scavenger hunt //
-- //                     June 2019                    //
-- //////////////////////////////////////////////////////

local ObjectManager = require("managers.object.object_manager")

--	States:
--	1 = Player has accepted the quest
--	2 = Player has been given a hint, and the search for that object is in progress
--	3 = Player has found the object they are searching for and is coming back for the next stage in the quest
--	4 = Player has collected everything and is ready to claim their reward
--	5 = Player has fully completed the scavenger hunt
--	6 = Player has asked for information about the object they are searching for (very temporary state, reset to 2 when the question is answered)
--	7 = Player is in the process of turning in the item (very temporary state)
--	8 = Player misplaced the item, needs to be instructed to find it again (very temporary state)

weddingScavHuntConvoHandler = conv_handler:new {}

function weddingScavHuntConvoHandler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
	local convoTemplate = LuaConversationTemplate(pConvTemplate)
	
	if (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 1) then
		return convoTemplate:getScreen("wed_scav_clue")
	elseif (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 2) then
		return convoTemplate:getScreen("wed_scav_in_progress")
	elseif (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 3) then
		return convoTemplate:getScreen("wed_scav_return")
	elseif (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 4) then
		return convoTemplate:getScreen("give_reward")
	elseif (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 5) then
		return convoTemplate:getScreen("scav_already_completed")
	elseif (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 6) then
		local scavNumber = tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "location"))
		return convoTemplate:getScreen("wed_scav_hint_" .. scavNumber)
	elseif (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 7) then
		return convoTemplate:getScreen("give_item")
	elseif (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")) == 8) then
		return convoTemplate:getScreen("reset_quest")
	else	
		return convoTemplate:getScreen("scav_intro")
	end
end


function weddingScavHuntConvoHandler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local numberOfOptions = 10
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
	local pGhost = CreatureObject(pPlayer):getPlayerObject()
	local pInventory = CreatureObject(pPlayer):getSlottedObject("inventory")
	local pReward = ""

	if (pGhost == nil) then
		return pConvScreen
	end

	local pConvScreen = screen:cloneScreen()
	local clonedConversation = LuaConversationScreen(pConvScreen)

	if string.find(screenID, "wed_scav_hint_" ) then
		writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 2)
	end

	if (screenID == "scav_begin") then
		
		--Check if player has looted and turned in all items
		local lastNum = 0
		for i = 1, numberOfOptions, 1 do
			local looted = "hasLooted" .. i
			if (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", looted)) ~= 2) then
				break  --If the player has not, kick them out of this loop and move on
			else 
				lastNum = i
			end
		end

		if(lastNum == numberOfOptions) then
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 4)
		
		else 
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 1)
			local scavNumber = getRandomNumber(numberOfOptions)

			--If the player has already collected and turned in that item, generate a new number
			while (tonumber(readScreenPlayData(pPlayer, "WeddingScavengerHunt", "hasLooted" .. scavNumber)) == 2) do
				scavNumber = getRandomNumber(numberOfOptions)
			end
 
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "location", scavNumber)
		end
	end

	if (screenID == "wed_scav_clue") then
		writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 2)
		weddingScavHunt:giveObject(pPlayer)
	end

	if (screenID == "hint_0") then
		writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 6)
	end

	if (screenID == "examine_item") then
		weddingScavHunt:giveTaskItem(pPlayer)
	end

	if (screenID == "reset_quest") then
		writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 2)
		writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "hasLooted" .. readScreenPlayData(pPlayer, "WeddingScavengerHunt", "location") , 0)
	end

	if (screenID == "give_item") then
		writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "hasLooted" .. readScreenPlayData(pPlayer, "WeddingScavengerHunt", "location") , 2)
		weddingScavHunt:removeObject(pPlayer)
	end

	if (screenID == "give_reward_1") then
		if pInventory == nil then
			return false
		end

		if SceneObject(pInventory):isContainerFullRecursive() then
			CreatureObject(pPlayer):sendSystemMessage("Your inventory is too full! Make some room, then claim your reward.")
		else
			pReward = giveItem(pInventory, "object/tangible/tarkin_custom/decorative/wed_scav_reward_painting.iff", -1)
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 5)
			CreatureObject(pPlayer):sendSystemMessage("Your reward has been placed in your inventory.")
		end
	end

	if (screenID == "give_reward_2") then
		if pInventory == nil then
			return false
		end

		if SceneObject(pInventory):isContainerFullRecursive() then
			CreatureObject(pPlayer):sendSystemMessage("Your inventory is too full! Make some room, then claim your reward.")
		else
			pReward = giveItem(pInventory, "object/tangible/loot/loot_schematic/wed_scav_reward_scotch_schematic.iff", -1)
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 5)
			CreatureObject(pPlayer):sendSystemMessage("Your reward has been placed in your inventory.")
		end
	end

	if (screenID == "give_reward_3") then
		if pInventory == nil then
			return false
		end

		if SceneObject(pInventory):isContainerFullRecursive() then
			CreatureObject(pPlayer):sendSystemMessage("Your inventory is too full! Make some room, then claim your reward.")
		else
			pReward = giveItem(pInventory, "object/tangible/tarkin_custom/decorative/wed_scav_reward_rug.iff", -1)
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 5)
			CreatureObject(pPlayer):sendSystemMessage("Your reward has been placed in your inventory.")
		end
	end

	if (screenID == "give_reward_4") then
		if pInventory == nil then
			return false
		end

		if SceneObject(pInventory):isContainerFullRecursive() then
			CreatureObject(pPlayer):sendSystemMessage("Your inventory is too full! Make some room, then claim your reward.")
		else
			pReward = giveItem(pInventory, "object/tangible/loot/loot_schematic/wed_scav_reward_camp_schematic.iff", -1)
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 5)
			CreatureObject(pPlayer):sendSystemMessage("Your reward has been placed in your inventory.")
		end
	end

	if (screenID == "give_reward_5") then
		if pInventory == nil then
			return false
		end

		if SceneObject(pInventory):isContainerFullRecursive() then
			CreatureObject(pPlayer):sendSystemMessage("Your inventory is too full! Make some room, then claim your reward.")
		else
			pReward = giveItem(pInventory, "object/tangible/loot/loot_schematic/be_tcg_peko_peko_mount_schematic.iff", -1)
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 5)
			CreatureObject(pPlayer):sendSystemMessage("Your reward has been placed in your inventory.")
			CreatureObject(pPlayer):sendSystemMessage("A creature handler will need to craft this pet.  Your Toxic Peko Peko will need some time to grow up after you tame it, and it will need to be mount-trained by a creature handler.")
		end
	end

	if (screenID == "give_reward_6") then
		if pInventory == nil then
			return false
		end

		if SceneObject(pInventory):isContainerFullRecursive() then
			CreatureObject(pPlayer):sendSystemMessage("Your inventory is too full! Make some room, then claim your reward.")
		else
			pReward = giveItem(pInventory, "object/tangible/wearables/jacket/jacket_gmf_01.iff", -1)
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "state", 5)
			CreatureObject(pPlayer):sendSystemMessage("Your reward has been placed in your inventory.")
		end
	end

	if (screenID == "refuse_quest") then --If the player declines to continue, erase all data associated with this screenplay
		local playerID = SceneObject(pPlayer):getObjectID()
		deleteScreenPlayData(pPlayer, "WeddingScavengerHunt", "state")
		deleteScreenPlayData(pPlayer, "WeddingScavengerHunt", "item")
		for i = 1, 20, 1 do
			deleteScreenPlayData(pPlayer, "WeddingScavengerHunt", "hasLooted" .. i)
			writeScreenPlayData(pPlayer, "WeddingScavengerHunt", "location", i)
			weddingScavHunt:removeObject(pPlayer)
			deleteScreenPlayData(pPlayer, "WeddingScavengerHunt", "location")
		end
	end

	return pConvScreen
end
