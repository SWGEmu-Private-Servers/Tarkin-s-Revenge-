object_tangible_tarkin_custom_decorative_fishtank_kit = object_tangible_tarkin_custom_decorative_shared_fishtank_kit:new {

	templateType = LOOTKIT,

	gameObjectType = 8233,
	
	--These are used to determine which components are necessary in the loot kit to finish the item
	collectibleComponents = {"object/tangible/fishing/fish/burra.iff", "object/tangible/fishing/fish/buzzfish.iff", "object/tangible/fishing/fish/trout.iff", "object/tangible/fishing/fish/fatfish.iff", "object/tangible/fishing/fish/gooberfish.iff", "object/tangible/fishing/fish/gumfish.iff", "object/tangible/fishing/fish/mee.iff", "object/tangible/fishing/fish/see.iff", "object/tangible/fishing/fish/crawlfish.iff", "object/tangible/loot/creature_loot/collections/fish_tank_bubble_stone.iff", "object/tangible/loot/creature_loot/collections/fish_tank_front_panel.iff", "object/tangible/loot/creature_loot/collections/fish_tank_rear_panel.iff", "object/tangible/loot/creature_loot/collections/fish_tank_right_panel.iff", "object/tangible/loot/creature_loot/collections/fish_tank_left_panel.iff", "object/tangible/loot/creature_loot/collections/fish_tank_tubing.iff"},
	
	collectibleReward = {"object/tangible/collection/reward/fish_tank_reward.iff"},

	deleteComponents = 1,

	--These are used to display to the player which components he already added. Same order as above is used
	attributes = {"burra","buzzfish","trout","fatfish","gooberfish","gumfish","mee","see","crawlfish","fish_tank_bubble_stone","fish_tank_front_panel","fish_tank_rear_panel","fish_tank_right_panel","fish_tank_left_panel","fish_tank_tubing"}
}

ObjectTemplates:addTemplate(object_tangible_tarkin_custom_decorative_fishtank_kit, "object/tangible/tarkin_custom/decorative/fishtank_kit.iff")
