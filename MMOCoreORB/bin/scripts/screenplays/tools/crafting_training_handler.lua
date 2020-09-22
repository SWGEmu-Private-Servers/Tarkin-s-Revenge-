-- Tarkin Crafting Training Handler
-- Grants crafting skills for free, provided the player has the prerequisite skills
-- Required adding LuaCreatureObject::addSkill() Lua call, as the DirectorManager::awardSkill Lua call does not apply skills recursively (and changing it to do so would likely have unforeseen consequences).

CraftingSkillTrainer = ScreenPlay:new {
	numberOfActs = 1,
	professions = {"Architect", "Armorsmith", "Artisan", "Bio-Engineer", "Chef", "Combat Medic", "Doctor", 
					"Droid Engineer", "Shipwright", "Smuggler", "Tailor", "Weaponsmith", "Merchant",
					"Medic", "Entertainer", "Dancer", "Image Designer", "Musician",
				  },
	skills = {
		{
			"Novice Architect", "crafting_architect_novice",
			"Master Architect", "crafting_architect_master",
			"Furniture I", "crafting_architect_production_01",
			"Furniture II", "crafting_architect_production_02",
			"Furniture III", "crafting_architect_production_03",
			"Furniture IV", "crafting_architect_production_04",
			"Construction I", "crafting_architect_techniques_01",
			"Construction II", "crafting_architect_techniques_02",
			"Construction III", "crafting_architect_techniques_03",
			"Construction IV", "crafting_architect_techniques_04",
			"Installations I", "crafting_architect_harvesting_01",
			"Installations II", "crafting_architect_harvesting_02",
			"Installations III", "crafting_architect_harvesting_03",
			"Installations IV", "crafting_architect_harvesting_04",
			"Buildings I", "crafting_architect_blueprints_01",
			"Buildings II", "crafting_architect_blueprints_02",
			"Buildings III", "crafting_architect_blueprints_03",
			"Buildings IV", "crafting_architect_blueprints_04",
		},
		{
			"Novice Armorsmith", "crafting_armorsmith_novice",
			"Master Armorsmith", "crafting_armorsmith_master",
			"Personal Armor I", "crafting_armorsmith_personal_01",
			"Personal Armor II", "crafting_armorsmith_personal_02",
			"Personal Armor III", "crafting_armorsmith_personal_03",
			"Personal Armor IV", "crafting_armorsmith_personal_04",
			"Layers I", "crafting_armorsmith_heavy_01",
			"Layers II", "crafting_armorsmith_heavy_02",
			"Layers III", "crafting_armorsmith_heavy_03",
			"Layers IV", "crafting_armorsmith_heavy_04",
			"Deflectors I", "crafting_armorsmith_deflectors_01",
			"Deflectors II", "crafting_armorsmith_deflectors_02",
			"Deflectors III", "crafting_armorsmith_deflectors_03",
			"Deflectors IV", "crafting_armorsmith_deflectors_04",
			"Technique I", "crafting_armorsmith_complexity_01",
			"Technique II", "crafting_armorsmith_complexity_02",
			"Technique III", "crafting_armorsmith_complexity_03",
			"Technique IV", "crafting_armorsmith_complexity_04",
		},
		{
			"Novice Artisan", "crafting_artisan_novice",
			"Master Artisan", "crafting_artisan_master",
			"Engineering I", "crafting_artisan_engineering_01",
			"Engineering II", "crafting_artisan_engineering_02",
			"Engineering III", "crafting_artisan_engineering_03",
			"Engineering IV", "crafting_artisan_engineering_04",
			"Domestic Arts I", "crafting_artisan_domestic_01",
			"Domestic Arts II", "crafting_artisan_domestic_02",
			"Domestic Arts III", "crafting_artisan_domestic_03",
			"Domestic Arts IV", "crafting_artisan_domestic_04",
			"Business I", "crafting_artisan_business_01",
			"Business II", "crafting_artisan_business_02",
			"Business III", "crafting_artisan_business_03",
			"Business IV", "crafting_artisan_business_04",
			"Surveying I", "crafting_artisan_survey_01",
			"Surveying II", "crafting_artisan_survey_02",
			"Surveying III", "crafting_artisan_survey_03",
			"Surveying IV", "crafting_artisan_survey_04",
		},
		{
			"Novice Bio-Engineer", "outdoors_bio_engineer_novice",
			"Master Bio-Engineer", "outdoors_bio_engineer_master",
			"Clone Engineering I","outdoors_bio_engineer_creature_01",
			"Clone Engineering II","outdoors_bio_engineer_creature_02",
			"Clone Engineering III","outdoors_bio_engineer_creature_03",
			"Clone Engineering IV","outdoors_bio_engineer_creature_04",		
			"Tissue Engineering I","outdoors_bio_engineer_tissue_01",
			"Tissue Engineering II","outdoors_bio_engineer_tissue_02",
			"Tissue Engineering III","outdoors_bio_engineer_tissue_03",
			"Tissue Engineering IV","outdoors_bio_engineer_tissue_04",	
			"DNA Sampling I","outdoors_bio_engineer_dna_harvesting_01",
			"DNA Sampling II","outdoors_bio_engineer_dna_harvesting_02",
			"DNA Sampling III","outdoors_bio_engineer_dna_harvesting_03",
			"DNA Sampling IV","outdoors_bio_engineer_dna_harvesting_04",		
			"Engineering Techniques I","outdoors_bio_engineer_production_01",
			"Engineering Techniques II","outdoors_bio_engineer_production_02",
			"Engineering Techniques III","outdoors_bio_engineer_production_03",
			"Engineering Techniques IV","outdoors_bio_engineer_production_04",
		},
		{
			"Novice Chef", "crafting_chef_novice",
			"Master Chef", "crafting_chef_master",
			"Entrees I", "crafting_chef_dish_01",
			"Entrees II", "crafting_chef_dish_02",
			"Entrees III", "crafting_chef_dish_03",
			"Entrees IV", "crafting_chef_dish_04",
			"Desserts I", "crafting_chef_dessert_01",
			"Desserts II", "crafting_chef_dessert_02",
			"Desserts III", "crafting_chef_dessert_03",
			"Desserts IV", "crafting_chef_dessert_04",
			"Mixology I", "crafting_chef_drink_01",
			"Mixology II", "crafting_chef_drink_02",
			"Mixology III", "crafting_chef_drink_03",
			"Mixology IV", "crafting_chef_drink_04",
			"Cooking I", "crafting_chef_techniques_01",
			"Cooking II", "crafting_chef_techniques_02",
			"Cooking III", "crafting_chef_techniques_03",
			"Cooking IV", "crafting_chef_techniques_04",
		},
		{
			"Intermediate Combat Medicine Crafting", "science_combatmedic_medicine_01",
			"Advanced Combat Medicine Crafting", "science_combatmedic_medicine_02",
			"Expert Combat Medicine Crafting", "science_combatmedic_medicine_03",
			"Master Combat Medicine Crafting", "science_combatmedic_medicine_04"
		},
		{
			"Intermediate Doctor's Medicine Crafting", "science_doctor_support_01",
			"Advanced Doctor's Medicine Crafting", "science_doctor_support_02",
			"Expert Doctor's Medicine Crafting", "science_doctor_support_03",
			"Master Doctor's Medicine Crafting", "science_doctor_support_04",
		},
		{
			"Novice Droid Engineer", "crafting_droidengineer_novice",
			"Master Droid Engineer", "crafting_droidengineer_master",
			"Intermediate Droid Production", "crafting_droidengineer_production_01",
			"Advanced Droid Production", "crafting_droidengineer_production_02",
			"Expert Droid Production", "crafting_droidengineer_production_03",
			"Master Droid Production", "crafting_droidengineer_production_04",
			"Intermediate Droid Construction Techniques", "crafting_droidengineer_techniques_01",
			"Advanced Droid Construction Techniques", "crafting_droidengineer_techniques_02",
			"Expert Droid Construction Techniques", "crafting_droidengineer_techniques_03",
			"Master Droid Construction Techniques", "crafting_droidengineer_techniques_04",
			"Intermediate Droid Refinement", "crafting_droidengineer_refinement_01",
			"Advanced Droid Refinement", "crafting_droidengineer_refinement_02",
			"Expert Droid Refinement", "crafting_droidengineer_refinement_03",
			"Master Droid Refinement", "crafting_droidengineer_refinement_04",
			"Intermediate Droid Blueprints", "crafting_droidengineer_blueprints_01",
			"Advanced Droid Blueprints", "crafting_droidengineer_blueprints_02",
			"Expert Droid Blueprints", "crafting_droidengineer_blueprints_03",
			"Master Droid Blueprints", "crafting_droidengineer_blueprints_04",
		},
		{
			"Novice Shipwright", "crafting_shipwright_novice",
			"Master Shipwright", "crafting_shipwright_master",
			"Spaceframe Engineering I", "crafting_shipwright_engineering_01",
			"Spaceframe Engineering II", "crafting_shipwright_engineering_02",
			"Spaceframe Engineering III", "crafting_shipwright_engineering_03",
			"Spaceframe Engineering IV", "crafting_shipwright_engineering_04",
			"Propulsion Technology I", "crafting_shipwright_propulsion_01",
			"Propulsion Technology II", "crafting_shipwright_propulsion_02",
			"Propulsion Technology III", "crafting_shipwright_propulsion_03",
			"Propulsion Technology IV", "crafting_shipwright_propulsion_04",
			"Core Systems I", "crafting_shipwright_systems_01",
			"Core Systems II", "crafting_shipwright_systems_02",
			"Core Systems III", "crafting_shipwright_systems_03",
			"Core Systems IV", "crafting_shipwright_systems_04",
			"Defense Systems I", "crafting_shipwright_defense_01",
			"Defense Systems II", "crafting_shipwright_defense_02",
			"Defense Systems III", "crafting_shipwright_defense_03",
			"Defense Systems IV", "crafting_shipwright_defense_04",
		},
		{
			"Spices I", "combat_smuggler_spice_01",
			"Spices II", "combat_smuggler_spice_02",
			"Spices III", "combat_smuggler_spice_03",
			"Spices IV", "combat_smuggler_spice_04",
		},
		{
			"Novice Tailor", "crafting_tailor_novice",
			"Master Tailor", "crafting_tailor_master",
			"Casual Wear I", "crafting_tailor_casual_01",
			"Casual Wear II", "crafting_tailor_casual_02",
			"Casual Wear III", "crafting_tailor_casual_03",
			"Casual Wear IV", "crafting_tailor_casual_04",
			"Field Wear I", "crafting_tailor_field_01",
			"Field Wear II", "crafting_tailor_field_02",
			"Field Wear III", "crafting_tailor_field_03",
			"Field Wear IV", "crafting_tailor_field_04",
			"Formal Wear I", "crafting_tailor_formal_01",
			"Formal Wear II", "crafting_tailor_formal_02",
			"Formal Wear III", "crafting_tailor_formal_03",
			"Formal Wear IV", "crafting_tailor_formal_04",
			"Tailoring I", "crafting_tailor_production_01",
			"Tailoring II", "crafting_tailor_production_02",
			"Tailoring III", "crafting_tailor_production_03",
			"Tailoring IV", "crafting_tailor_production_04",
		},
		{
			"Novice Weaponsmith", "crafting_weaponsmith_novice",
			"Master Weaponsmith", "crafting_weaponsmith_master",
			"Intermediate Melee Weapons Crafting", "crafting_weaponsmith_melee_01",
			"Advanced Melee Weapons Crafting", "crafting_weaponsmith_melee_02",
			"Expert Melee Weapons Crafting", "crafting_weaponsmith_melee_03",
			"Master Melee Weapons Crafting", "crafting_weaponsmith_melee_04",
			"Intermediate Firearms Crafting", "crafting_weaponsmith_firearms_01",
			"Advanced Firearms Crafting", "crafting_weaponsmith_firearms_02",
			"Expert Firearms Crafting", "crafting_weaponsmith_firearms_03",
			"Master Firearms Crafting", "crafting_weaponsmith_firearms_04",
			"Intermediate Munitions Crafting", "crafting_weaponsmith_munitions_01",
			"Advanced Munitions Crafting", "crafting_weaponsmith_munitions_02",
			"Expert Munitions Crafting", "crafting_weaponsmith_munitions_03",
			"Master Munitions Crafting", "crafting_weaponsmith_munitions_04",
			"Intermediate Weapon Crafting Techniques", "crafting_weaponsmith_techniques_01",
			"Advanced Weapon Crafting Techniques", "crafting_weaponsmith_techniques_02",
			"Expert Weapon Crafting Techniques", "crafting_weaponsmith_techniques_03",
			"Master Weapon Crafting Techniques", "crafting_weaponsmith_techniques_04",
		},
		{
			"Novice Merchant", "crafting_merchant_novice",
			"Master Merchant", "crafting_merchant_master",
			"Advertising I", "crafting_merchant_advertising_01",
			"Advertising II", "crafting_merchant_advertising_02",
			"Advertising III", "crafting_merchant_advertising_03",
			"Advertising IV", "crafting_merchant_advertising_04",
			"Efficiency I", "crafting_merchant_sales_01",
			"Efficiency II", "crafting_merchant_sales_02",
			"Efficiency III", "crafting_merchant_sales_03",
			"Efficiency IV", "crafting_merchant_sales_04",
			"Hiring I", "crafting_merchant_hiring_01",
			"Hiring II", "crafting_merchant_hiring_02",
			"Hiring III", "crafting_merchant_hiring_03",
			"Hiring IV", "crafting_merchant_hiring_04",
			"Management I", "crafting_merchant_management_01",
			"Management II", "crafting_merchant_management_02",
			"Management III", "crafting_merchant_management_03",
			"Management IV", "crafting_merchant_management_04",
		},
		{	-- Medic
			"Organic Chemistry I", "science_medic_crafting_01",
			"Organic Chemistry II", "science_medic_crafting_02",
			"Organic Chemistry III", "science_medic_crafting_03",
			"Organic Chemistry IV", "science_medic_crafting_04",
		},
		{
			"Novice Entertainer", "social_entertainer_novice",
			"Master Entertainer", "social_entertainer_master",
			"Image Design I", "social_entertainer_hairstyle_01",
			"Image Design II", "social_entertainer_hairstyle_02",
			"Image Design III", "social_entertainer_hairstyle_03",
			"Image Design IV", "social_entertainer_hairstyle_04",
			"Musicianship I", "social_entertainer_music_01",
			"Musicianship II", "social_entertainer_music_02",
			"Musicianship III", "social_entertainer_music_03",
			"Musicianship IV", "social_entertainer_music_04",
			"Dancing I", "social_entertainer_dance_01",
			"Dancing II", "social_entertainer_dance_02",
			"Dancing III", "social_entertainer_dance_03",
			"Dancing IV", "social_entertainer_dance_04",
			"Entertainment Healing I", "social_entertainer_healing_01",
			"Entertainment Healing II", "social_entertainer_healing_02",
			"Entertainment Healing III", "social_entertainer_healing_03",
			"Entertainment Healing IV", "social_entertainer_healing_04",
		},
		{
			"Novice Dancer", "social_dancer_novice",
			"Master Dancer", "social_dancer_master",
			"Dancing Techniques I", "social_dancer_ability_01",
			"Dancing Techniques II", "social_dancer_ability_02",
			"Dancing Techniques III", "social_dancer_ability_03",
			"Technique Specialist IV", "social_dancer_ability_04",
			"Dancer's Wound Healing I", "social_dancer_wound_01",
			"Dancer's Wound Healing II", "social_dancer_wound_02",
			"Dancer's Wound Healing III", "social_dancer_wound_03",
			"Dancer's Wound Healing IV", "social_dancer_wound_04",
			"Dancing Knowledge I", "social_dancer_knowledge_01",
			"Dancing Knowledge II", "social_dancer_knowledge_02",
			"Dancing Knowledge III", "social_dancer_knowledge_03",
			"Dancing Knowledge IV", "social_dancer_knowledge_04",
			"Dancer's Fatigue Healing I", "social_dancer_shock_01",
			"Dancer's Fatigue Healing II", "social_dancer_shock_02",
			"Dancer's Fatigue Healing III", "social_dancer_shock_03",
			"Dancer's Fatigue Healing IV", "social_dancer_shock_04",
		},
		{
			"Novice Image Designer", "social_imagedesigner_novice",
			"Master Image Designer", "social_imagedesigner_master",
			"Hairstyling I", "social_imagedesigner_hairstyle_01",
			"Hairstyling II", "social_imagedesigner_hairstyle_02",
			"Hairstyling III", "social_imagedesigner_hairstyle_03",
			"Hairstyling IV", "social_imagedesigner_hairstyle_04",
			"Face I", "social_imagedesigner_exotic_01",
			"Face II", "social_imagedesigner_exotic_02",
			"Face III", "social_imagedesigner_exotic_03",
			"Face IV", "social_imagedesigner_exotic_04",
			"Bodyform I", "social_imagedesigner_bodyform_01",
			"Bodyform II", "social_imagedesigner_bodyform_02",
			"Bodyform III", "social_imagedesigner_bodyform_03",
			"Bodyform Iv", "social_imagedesigner_bodyform_04",
			"Markings I", "social_imagedesigner_markings_01",
			"Markings II", "social_imagedesigner_markings_02",
			"Markings III", "social_imagedesigner_markings_03",
			"Markings IV", "social_imagedesigner_markings_04",
		},
		{
			"Novice Musician", "social_musician_novice",
			"Master Musician", "social_musician_master",
			"Musical Techniques I", "social_musician_ability_01",
			"Musical Techniques II", "social_musician_ability_02",
			"Musical Techniques III", "social_musician_ability_03",
			"Technique Specialist IV", "social_musician_ability_04",
			"Musician's Wound Healing I", "social_musician_wound_01",
			"Musician's Wound Healing II", "social_musician_wound_02",
			"Musician's Wound Healing III", "social_musician_wound_03",
			"Musician's Wound Healing IV", "social_musician_wound_04",
			"Musical Knowledge I", "social_musician_knowledge_01",
			"Musical Knowledge II", "social_musician_knowledge_02",
			"Musical Knowledge III", "social_musician_knowledge_03",
			"Musical Knowledge IV", "social_musician_knowledge_04",
			"Musician's Fatigue Healing I", "social_musician_shock_01",
			"Musician's Fatigue Healing II", "social_musician_shock_02",
			"Musician's Fatigue Healing III", "social_musician_shock_03",
			"Musician's Fatigue Healing IV", "social_musician_shock_04",
		},
	},
	termModel = "object/tangible/beta/beta_terminal_xp.iff",
	termName = "Crafting Skill Trainer",
	terminals = {
		--{planetName = "tatooine", x = 1257.01, z = 7, y = 3141.33, ow = 0.998086, oy = -0.0618482}, -- Mos Entha starport 
		--{planetName = "tatooine", x = 1525.97, z = 15, y = 3478.09, ow = 0.0, oy = 0.0}, -- Mos Entha north on hill
	}, 
	npcTrainers = {
		{planetName = "tatooine", mobileTemplate = "commoner", respawn = 1, x = 1139.42, z = 7, y = 3017.26, angle = 48, cell = 0}, -- Mos Entha starport 
		{planetName = "tatooine", mobileTemplate = "commoner", respawn = 1, x = 1540.18, z = 7, y = 3460.87, angle = 142, cell = 0}, -- Mos Entha north
		{planetName = "naboo", mobileTemplate = "commoner", respawn = 1, x = -4864.45, z = 6.4248, y = 4182.2, angle = 230.918, cell = 0}, -- Theed starport
		{planetName = "corellia", mobileTemplate = "commoner", respawn = 1, x = -185.792, z = 28, y = -4845.33, angle = -1, cell = 0}, -- Coronet starport
	},
}

registerScreenPlay("CraftingSkillTrainer", true)

function CraftingSkillTrainer:start()
--[[	-- Spawn terminal versions
	for i = 1, #self.terminals, 1 do
		local pTerminal = spawnSceneObject(self.terminals[i].planetName, self.termModel , self.terminals[i].x, self.terminals[i].z, self.terminals[i].y, 0, self.terminals[i].ow, 0, self.terminals[i].oy, 0)
		if (pTerminal ~= nil) then
			-- Add menu and custom name
			SceneObject(pTerminal):setObjectMenuComponent("CraftingSkillTrainerMenuComponent")
			SceneObject(pTerminal):setCustomObjectName(self.termName)
		end
	end
--]]	
	-- Spawn NPC versions
	for i = 1, #self.npcTrainers, 1 do
		local pNpc = spawnMobile(self.npcTrainers[i].planetName, self.npcTrainers[i].mobileTemplate, self.npcTrainers[i].respawn, self.npcTrainers[i].x, self.npcTrainers[i].z, self.npcTrainers[i].y, self.npcTrainers[i].angle, self.npcTrainers[i].cell)
		if (pNpc ~= nil) then
			CreatureObject(pNpc):setOptionsBitmask(AIENABLED + CONVERSABLE)
			SceneObject(pNpc):setCustomObjectName("Skill Trainer")
			AiAgent(pNpc):setConvoTemplate("tarkinCraftingTrainerConvoTemplate")
		end
	end
end


-- UI Window Functions

function CraftingSkillTrainer:openWindow(pCreatureObject, pUsingObject)
	local sui = SuiListBox.new("CraftingSkillTrainer", "profSelected")

	-- Using object ID, stored in PageData
	if (pUsingObject == nil) then
		sui.setTargetNetworkId(0)
	else
		sui.setTargetNetworkId(SceneObject(pUsingObject):getObjectID())
	end

	sui.setForceCloseDistance(16)

	sui.setTitle("Skill Trainer")
	
	local message = "This trainer will teach you skills at no cost. You can master any elite crafting profession right away, however to learn any of the Doctor, Combat Medic, and Bio-Engineer crafting skills you must first meet requirements for the novice box.\n\n Note: Entertainer, Dancer, Image Designer, and Musician do not consume Skill Points, so you can learn all of those skills along with your normal build if you would like."
	sui.setPrompt(message)
	
	for i = 1, #self.professions, 1 do
		sui.add(self.professions[i], "")
	end

	sui.sendTo(pCreatureObject)
end

function CraftingSkillTrainer:profSelected(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end

	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No option was selected, please try again.")
		return
	end

	local selectedOption = tonumber(args) + 1
	
	-- Save selected profession for later use
	writeScreenPlayData(pPlayer, "CraftingSkillTrainer", "profSelected", selectedOption) 
	
	if (selectedOption == 4 and (not CreatureObject(pPlayer):hasSkill("science_medic_crafting_04") or not CreatureObject(pPlayer):hasSkill("outdoors_scout_harvest_04"))) then -- Bio-Engineer
		CreatureObject(pPlayer):sendSystemMessage("Sorry, you must have Scout: Harvesting IV and Medic: Organic Chemestry IV to learn Bio-Engineering.")
		return
	elseif (selectedOption == 6 and not CreatureObject(pPlayer):hasSkill("science_combatmedic_novice")) then -- Combat Medic
		CreatureObject(pPlayer):sendSystemMessage("Sorry, you must have Novice Combat Medic to learn these skills.")
		return
	elseif (selectedOption == 7 and not CreatureObject(pPlayer):hasSkill("science_doctor_novice")) then -- Doctor
		CreatureObject(pPlayer):sendSystemMessage("Sorry, you must have Novice Doctor to learn these skills.")
		return
	elseif (selectedOption == 10 and not CreatureObject(pPlayer):hasSkill("combat_smuggler_novice")) then -- Smuggler
		CreatureObject(pPlayer):sendSystemMessage("Sorry, you must have Novice Smuggler to learn these skills.")
		return
	end
	
	-- Open the next window and list profession skill choices
	
	local sui = SuiListBox.new("CraftingSkillTrainer", "trainSkill")

	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())

	sui.setTitle(self.professions[selectedOption])
	
	local message = "Select a skill to train. Choose the highest one you would like, as all others below it will be granted as well.\n\n Note: Entertainer, Dancer, Image Designer, and Musician do not consume Skill Points, so you can learn all of those skills along with your normal build if you would like."
	
	sui.setPrompt(message)

	for i = 1, #self.skills[selectedOption], 2 do
		sui.add(self.skills[selectedOption][i], "")
	end

	sui.sendTo(pPlayer)
end


function CraftingSkillTrainer:trainSkill(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end


	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No option was selected, please try again.")
		return
	end


	local selectedIndex = tonumber(args) + 1
	
	local profSelected = tonumber(readScreenPlayData(pPlayer, "CraftingSkillTrainer", "profSelected"))
	local skillName = self.skills[profSelected][selectedIndex * 2]

	-- Train desired skill and all skills upto that point (we already determined they're allowed)
	CreatureObject(pPlayer):addSkill(skillName)
	
	CreatureObject(pPlayer):sendSystemMessage(self.skills[profSelected][selectedIndex * 2 - 1] .. " training complete!")

	deleteScreenPlayData(pPlayer, "CraftingSkillTrainer", "profSelected")
end


-- Radial Menu Functions

CraftingSkillTrainerMenuComponent = { }

function CraftingSkillTrainerMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)
	menuResponse:addRadialMenuItem(20, 3, "Use Terminal")
end

function CraftingSkillTrainerMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end
	
	if CreatureObject(pPlayer):isInCombat() then
		CreatureObject(pPlayer):sendSystemMessage("Terminal services are not available while you are in combat.")
		return 0
	end
	
	if (selectedID == 20) then
		CraftingSkillTrainer:openWindow(pPlayer, pObject)
	end 
	
	return 0
end

function CraftingSkillTrainerMenuComponent:noCallback(pPlayer, pSui, eventIndex)
	-- do nothing
end


-- Conversation triggers SUI box to open.
-- Convo is in bin/scripts/mobile/conversations/misc/tarkin_crafting_trainer_conv.lua

tarkinCraftingTrainerConvoTemplate_convo_handler = Object:new {
  tstring = "myconversation"
}

function tarkinCraftingTrainerConvoTemplate_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
    local conversation = LuaConversationTemplate(conversationTemplate)
    return conversation:getScreen("start")
end

function tarkinCraftingTrainerConvoTemplate_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  local screen = LuaConversationScreen(conversationScreen)
  local screenID = screen:getScreenID()
  
  if (screenID == "start") then
	CraftingSkillTrainer:openWindow(conversingPlayer, nil)
  end
  
  return conversationScreen
end
