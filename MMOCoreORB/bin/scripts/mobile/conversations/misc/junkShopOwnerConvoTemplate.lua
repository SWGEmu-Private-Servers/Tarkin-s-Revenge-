-- //////////////////////////////////////////////////////
-- //		junkShopOwnerConvoTemplate.lua         //
-- //                  Tarkin's Revenge                //
-- //                     July 2019                    //
-- //////////////////////////////////////////////////////

junkShopOwnerConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "junkShopOwnerConvoHandler",
	screens = {}
}

start = ConvoScreen:new {
	id = "start",
	leftDialog = "@player_quest:junk_shop_1", --Greetings, gentlebeing.  Can I interest you in some of my wares?
	stopConversation = "false",
	options = {
		{"@player_quest:junk_shop_r1", "launch_wares_sui"}, --Yes, what do you have available?
		{"@player_quest:junk_shop_r2", "end_convo"}, --No, thank you.
	}
}
junkShopOwnerConvoTemplate:addScreen(start);

launch_wares_sui = ConvoScreen:new {
	id = "launch_wares_sui",
	leftDialog = "@player_quest:junk_shop_2", --I think you'll be pleased with my selection and prices.
	stopConversation = "true",
	options = {}
}
junkShopOwnerConvoTemplate:addScreen(launch_wares_sui);

end_convo = ConvoScreen:new {
	id = "end_convo",
	leftDialog = "@player_quest:junk_shop_3", --Another time, perhaps.
	stopConversation = "true",
	options = {}
}
junkShopOwnerConvoTemplate:addScreen(end_convo);

addConversationTemplate("junkShopOwnerConvoTemplate", junkShopOwnerConvoTemplate);
