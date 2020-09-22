--//////////////////////////////////
--//   Bad Easter Bunny Terror	  //
--//     a Tarkin screenplay	  //
--//////////////////////////////////
--// Batches of Bio-Engineered    //
--// Ash-Rabbits have escaped     //
--// Imperial Customs near Theed, //
--// Coronet and Mos Entha. Help  //
--// rid the galaxy of this menace//
--// and earn amazing rewards.    //
--// Imperial Customs and Transit //
--// Authority suggests that you  //
--// bring a group of skilled     //
--// hunters if you wish to assist//
--// in taking down the escaped   //
--// Matriarchs.                  //
--//////////////////////////////////

local ObjectManager = require("managers.object.object_manager")

badEasterBunnyTerrorScreenPlay = ScreenPlay:new {

	numberOfActs = 1,

	--Setup Spawn Centers for each City
	xRefCoronet = -224,  --The x coordinate of the approximate city center
	yRefCoronet = -4558, --The y coordinate of the approximate city center
	minCoronet = 475, --Don't spawn anything inside this radius from the center (it might end up inside of buildings)
	maxCoronet = 650, --Max distance to spawn things
	zoneCoronet = "corellia", --Planet
	
	xRefTheed = -5168,
	yRefTheed = 4224,
	minTheed = 900,
	maxTheed = 1200,
	zoneTheed = "naboo",
	
	xRefEntha = 1347, 
	yRefEntha = 3135, 
	minEntha= 500, 
	maxEntha = 750, 
	zoneEntha = "tatooine",

	screenplayName = "badEasterBunnyTerrorScreenPlay",
	
}

registerScreenPlay("badEasterBunnyTerrorScreenPlay", true)

function badEasterBunnyTerrorScreenPlay:start()
	if (isZoneEnabled("corellia") and isZoneEnabled("tatooine") and isZoneEnabled("naboo") ) then
		self:spawnMobiles()
	end
end

function badEasterBunnyTerrorScreenPlay:spawnMobiles()
	
	local cities = 1 --Start the loop off at 1

	while (cities < 4) do --Three cities
		if (cities == 1) then 	--Coronet
			zone = self.zoneCoronet
			xRef = self.xRefCoronet
			yRef = self.yRefCoronet
			minimum = self.minCoronet
			maximum = self.maxCoronet

		elseif (cities == 2) then --Theed
			zone = self.zoneTheed
			xRef = self.xRefTheed
			yRef = self.yRefTheed
			minimum = self.minTheed
			maximum = self.maxTheed
		else
			zone = self.zoneEntha --Mos Entha
			xRef = self.xRefEntha
			yRef = self.yRefEntha
			minimum = self.minEntha
			maximum = self.maxEntha
		end			

		local spawns = 1 --Number of bunny spawns created
		local badspawns = 1 --Number of badbunny spawns created
		local spawnPoint
		local pSpawner = spawnSceneObject(zone, "object/tangible/spawning/quest_spawner.iff", xRef, 0, yRef, 0, 0)

		if (pSpawner == nil) then
			printLuaError("QuestSpawner:createQuestSpawner, unable to create spawner object.")
			return
		end

		while (spawns < 31) do --30 bunny spawns per city

			spawnPoint = getSpawnPoint(zone, xRef, yRef, minimum, maximum, true)

			if (spawnPoint == nil) then
				spawnPoint = { spawnerX, getTerrainHeight(pSpawner, xRef, yRef), yRef }
			end

			local pBunny = spawnMobile(zone, "easterbunny", 0, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360) - 180, 0)

			if (pBunny ~= nil) then
				writeData(SceneObject(pBunny):getObjectID() .. ":bunnyZone", cities)
				createEvent(10, "badEasterBunnyTerrorScreenPlay", "setupBunny", pBunny, "")

			end

			while (badspawns < 2) do --1 bad bunny spawn per city
				
				spawnPoint = getSpawnPoint(zone, xRef, yRef, minimum, maximum, true)
			
				if (spawnPoint == nil) then
					spawnPoint = { spawnerX, getTerrainHeight(pSpawner, xRef, yRef), yRef }
				end

				local pBadBunny = spawnMobile(zone, "badeasterbunny", 0, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360) - 180, 0)

				if (pBadBunny ~= nil) then
					writeData(SceneObject(pBadBunny):getObjectID() .. ":bunnyZone", cities)
					createEvent(10, "badEasterBunnyTerrorScreenPlay", "setupBunny", pBadBunny, "")
				end

				badspawns = badspawns + 1
			end

			spawns = spawns + 1
		end
	
		cities = cities + 1
	end
end

function badEasterBunnyTerrorScreenPlay:setupBunny(pBunny)
	createObserver(OBJECTDESTRUCTION, "badEasterBunnyTerrorScreenPlay", "notifyBunnyDead", pBunny)
end

function badEasterBunnyTerrorScreenPlay:notifyBunnyDead(pBunny, pKiller)
	if (pBunny == nil) then
		return 1
	end

	--If the event days are over, don't respawn any more bunnies
	if (getFormattedTime():find("Thu Apr 18") == nil) and
	   (getFormattedTime():find("Fri Apr 19") == nil) and
           (getFormattedTime():find("Sat Apr 20") == nil) and
	   (getFormattedTime():find("Sun Apr 21") == nil) and
	   (getFormattedTime():find("Mon Apr 22") == nil) then 
		return 1
	end


	local objName = SceneObject(pBunny):getCustomObjectName()
	local objID = SceneObject(pBunny):getObjectID()
	local bunnyZone = readData(objID .. ":bunnyZone")
	deleteData(objID .. ":bunnyZone")	
	if (objName == "an escaped ash rabbit") then
		createEvent(180 * 1000, "badEasterBunnyTerrorScreenPlay", "respawnBunny", pBunny, bunnyZone) --Respawn bunnies 3 minutes after death
	
	elseif (objName == "an escaped ash rabbit matriarch") then
		createEvent(7200 * 1000, "badEasterBunnyTerrorScreenPlay", "respawnBadBunny", pBunny, bunnyZone) --Respawn bad bunnies 2 hours after death
	end

	return 1
end

function badEasterBunnyTerrorScreenPlay:respawnBunny(pOldBunny, bunnyZone)

		if (bunnyZone == "1") then
			zone = self.zoneCoronet --Coronet
			xRef = self.xRefCoronet
			yRef = self.yRefCoronet
			minimum = self.minCoronet
			maximum = self.maxCoronet
		elseif (bunnyZone == "2") then
			zone = self.zoneTheed --Theed
			xRef = self.xRefTheed
			yRef = self.yRefTheed
			minimum = self.minTheed
			maximum = self.maxTheed
		elseif (bunnyZone == "3") then
			zone = self.zoneEntha --Mos Entha
			xRef = self.xRefEntha
			yRef = self.yRefEntha
			minimum = self.minEntha
			maximum = self.maxEntha
		else 
			printLuaError("Bunny lacks a valid zone, zone is: " .. bunnyZone .. ".")			
			return
		end		
		
		local pSpawner = spawnSceneObject(zone, "object/tangible/spawning/quest_spawner.iff", xRef, 0, yRef, 0, 0)

		if (pSpawner == nil) then
			printLuaError("QuestSpawner:createQuestSpawner, unable to create spawner object.")
			return
		end

		local spawnPoint = getSpawnPoint(zone, xRef, yRef, minimum, maximum, true)

		if (spawnPoint == nil) then
			spawnPoint = { spawnerX, getTerrainHeight(pSpawner, xRef, yRef), yRef }
		end

		local pBunny = spawnMobile(zone, "easterbunny", 0, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360) - 180, 0)

		if (pBunny ~= nil) then
			writeData(SceneObject(pBunny):getObjectID() .. ":bunnyZone", bunnyZone)
			createEvent(10, "badEasterBunnyTerrorScreenPlay", "setupBunny", pBunny, "")
		end
end

function badEasterBunnyTerrorScreenPlay:respawnBadBunny(pOldBunny, bunnyZone)
		if (bunnyZone == "1") then
			zone = self.zoneCoronet --Coronet
			xRef = self.xRefCoronet
			yRef = self.yRefCoronet
			minimum = self.minCoronet
			maximum = self.maxCoronet
		elseif (bunnyZone == "2") then
			zone = self.zoneTheed --Theed
			xRef = self.xRefTheed
			yRef = self.yRefTheed
			minimum = self.minTheed
			maximum = self.maxTheed
		elseif (bunnyZone == "3") then
			zone = self.zoneEntha --Mos Entha
			xRef = self.xRefEntha
			yRef = self.yRefEntha
			minimum = self.minEntha
			maximum = self.maxEntha
		else 
			printLuaError("Bunny lacks a valid zone, zone is: " .. bunnyZone .. ".")			
			return
		end		
		
		local pSpawner = spawnSceneObject(zone, "object/tangible/spawning/quest_spawner.iff", xRef, 0, yRef, 0, 0)

		if (pSpawner == nil) then
			printLuaError("QuestSpawner:createQuestSpawner, unable to create spawner object.")
			return
		end

		local spawnPoint = getSpawnPoint(zone, xRef, yRef, minimum, maximum, true)

		if (spawnPoint == nil) then
			spawnPoint = { spawnerX, getTerrainHeight(pSpawner, xRef, yRef), yRef }
		end

		local pBunny = spawnMobile(zone, "badeasterbunny", 0, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360) - 180, 0)

		if (pBunny ~= nil) then
			writeData(SceneObject(pBunny):getObjectID() .. ":bunnyZone", bunnyZone)
			createEvent(10, "badEasterBunnyTerrorScreenPlay", "setupBunny", pBunny, "")
		end
end
