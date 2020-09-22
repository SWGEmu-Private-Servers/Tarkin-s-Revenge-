tarkinCraftingTrainerConvoTemplate = ConvoTemplate:new {
	initialScreen = "start",
	templateType="Lua",
	luaClassHandler = "tarkinCraftingTrainerConvoTemplate_convo_handler",
	screens = {}
}
 tarkinCraftingTrainer_start = ConvoScreen:new {
	id = "start",
	leftDialog = "@random_dialog:townperson_2",
	stopConversation = "true",
	options = {
	}
}
tarkinCraftingTrainerConvoTemplate:addScreen(tarkinCraftingTrainer_start);
 addConversationTemplate("tarkinCraftingTrainerConvoTemplate", tarkinCraftingTrainerConvoTemplate);
