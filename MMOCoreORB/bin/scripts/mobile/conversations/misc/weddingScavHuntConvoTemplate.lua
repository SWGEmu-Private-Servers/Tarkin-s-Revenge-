-- //////////////////////////////////////////////////////
-- //		 weddingScavHuntConvoTemplate.lua      //
-- //                  Tarkin's Revenge                //
-- // ParadymShift & Liakhara's wedding scavenger hunt //
-- //                     June 2019                    //
-- //////////////////////////////////////////////////////


weddingScavHuntConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "weddingScavHuntConvoHandler",
	screens = {}
}

scav_intro = ConvoScreen:new {
	id = "scav_intro",
	leftDialog = "@player_quest:wed_scav_intro", --Oh, thank the maker!  I knew you'd come.  Nothing is as it should be, but I know you'll be able to make it right. 
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_intro_reply_01", "tell_me_more"}, --Excuse me?
		{"@player_quest:wed_scav_intro_reply_02", "polite_no"}, --I don't think it's me you're looking for, friend.
		{"@player_quest:wed_scav_intro_reply_03", "rude_no"}, --Get out of my way, droid!
	}
}
weddingScavHuntConvoTemplate:addScreen(scav_intro);

polite_no = ConvoScreen:new {
	id = "polite_no",
	leftDialog = "@player_quest:wed_scav_polite_no", --No?  Oh, PLEASE tell me you're here to help me find the missing items.  Without them, we can't have the wedding!
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_polite_no_reply_01", "tell_me_more"}, --Wedding? What wedding?
		{"@player_quest:wed_scav_polite_no_reply_02", "refuse_quest"}, --No, I'm definitely not here for that.
	}
}
weddingScavHuntConvoTemplate:addScreen(polite_no);

rude_no = ConvoScreen:new {
	id = "rude_no",
	leftDialog = "@player_quest:wed_scav_rude_no", --Well, I never!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(rude_no);

refuse_quest = ConvoScreen:new {
	id = "refuse_quest",
	leftDialog = "@player_quest:wed_scav_refuse_quest", --Oh dear.  Well, if you say so.  If you come across anyone who has some free time, please do send them my way.  It's a matter of utmost urgency!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(refuse_quest);

tell_me_more = ConvoScreen:new {
	id = "tell_me_more",
	leftDialog = "@player_quest:wed_scav_tell_me_more", --Paradym and Liakahara are getting married, but somehow all the trappings for their wedding have been LOST!  I think I've identified likely locations where each item might be, but oh!  I simply haven't the time to visit them all and find out for sure.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_tell_me_more_reply_01", "instructions"}, --I can help.  What do you need me to do?
		{"@player_quest:wed_scav_tell_me_more_reply_02", "negotiate"}, --I might have some free time.  What's in it for me if I help you out?
		{"@player_quest:wed_scav_tell_me_more_reply_03", "refuse_quest"}, --I don't think I'll have time to do that.
		{"@player_quest:wed_scav_tell_me_more_reply_04", "rude_no"}, --Weddings are stupid.  Buzz off!
	}
}
weddingScavHuntConvoTemplate:addScreen(tell_me_more);

instructions = ConvoScreen:new {
	id = "instructions",
	leftDialog = "@player_quest:wed_scav_instructions", --I need someone to collect all ten of the necessary items, so that the happy couple can get married as planned.  I do know that each item is in a different location.  I have pictures of each location, but I'm not certain EXACTLY where they can be found.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_instructions_reply_01", "scav_begin"}, --Just tell me what I'm looking for and where to start.
		{"@player_quest:wed_scav_instructions_reply_02", "refuse_quest"}, --That sounds like more than I'm willing to take on right now.
	}
}
weddingScavHuntConvoTemplate:addScreen(instructions);

negotiate = ConvoScreen:new {
	id = "negotiate",
	leftDialog = "@player_quest:wed_scav_negotiate", --I'm quite certain the couple has several choices of a reward... IF you're able to deliver the items in time for their wedding.  And time is slipping away, you'd best get started!
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_negotiate_reply_01", "instructions"}, --All right, I'm in.  But I'm expecting to be well-rewarded.
		{"@player_quest:wed_scav_negotiate_reply_02", "are_you_sure"}, --I don't think I'm going to be able to do this after all.
	}
}
weddingScavHuntConvoTemplate:addScreen(negotiate);

scav_begin = ConvoScreen:new {
	id = "scav_begin",
	leftDialog = "@player_quest:wed_scav_begin", --Give me just a moment to collect my list, then speak to me again. 
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(scav_begin);

wed_scav_clue = ConvoScreen:new {
	id = "wed_scav_clue",
	leftDialog = "@player_quest:wed_scav_clue", --I have deposited a painting in the data tab of your datapad.  This painting contains a photograpic image of the location where you can find the necessary item!
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_clue_reply_01", "hint_0"}, --Can you explain to me what I'm looking for, and the meaning of the picture you gave me?
		{"@player_quest:wed_scav_clue_reply_02", "stop"} --I will get started right away.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_clue);

wed_scav_in_progress = ConvoScreen:new {
	id = "wed_scav_in_progress",
	leftDialog = "@player_quest:wed_scav_in_progress", --Have you found the item we need?  Oh, please do say you have it!
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_in_progress_reply_01", "hint_0"}, --I haven't found it yet.  Can you give me a reminder of what I'm looking for?
		{"@player_quest:wed_scav_in_progress_reply_02", "stop"}, --Not yet, but I'm working on it.
		{"@player_quest:wed_scav_in_progress_reply_03", "are_you_sure"} --I haven't found it.  I actually don't think I'm going to have time to finish this, you'll have to find someone else.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_in_progress);

stop = ConvoScreen:new {
	id = "stop",
	leftDialog = "@player_quest:wed_scav_stop", --Very well, please do hurry back!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(stop);

scav_already_completed = ConvoScreen:new {
	id = "scav_already_completed",
	leftDialog = "@player_quest:wed_scav_already_completed", --Thank you so much for the assistance you rendered!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(scav_already_completed);

hint_0 = ConvoScreen:new {
	id = "hint_0",
	leftDialog = "@player_quest:wed_scav_hint_0", --Let me consult my notes, and I will tell you what I can.  Speak to me again in just a moment.
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(hint_0);

wed_scav_hint_1 = ConvoScreen:new {
	id = "wed_scav_hint_1",
	leftDialog = "@player_quest:wed_scav_hint_1", --You need to find a slice of cake, which is located somewhere near a crystal and stone arch on Corellia.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_1);

wed_scav_hint_2 = ConvoScreen:new {
	id = "wed_scav_hint_2",
	leftDialog = "@player_quest:wed_scav_hint_2", --You need to find some wedding gifts, which are located somewhere near a Gungan fountain on Naboo.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_2);

wed_scav_hint_3 = ConvoScreen:new {
	id = "wed_scav_hint_3",
	leftDialog = "@player_quest:wed_scav_hint_3", --You need to find Paradym's ring, which is located somewhere near a tower with green fire on Dantooine.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_3);

wed_scav_hint_4 = ConvoScreen:new {
	id = "wed_scav_hint_4",
	leftDialog = "@player_quest:wed_scav_hint_4", --You need to find a wedding decoration, which is located somewhere near a wrecked outpost on Rori.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_4);

wed_scav_hint_5 = ConvoScreen:new {
	id = "wed_scav_hint_5",
	leftDialog = "@player_quest:wed_scav_hint_5", --You need to find a sparkling diamond, which is located somewhere near a stone lily and torch on Dathomir.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_5);

wed_scav_hint_6 = ConvoScreen:new {
	id = "wed_scav_hint_6",
	leftDialog = "@player_quest:wed_scav_hint_6", --You need to find a bridal bouquet, which is located somewhere near the lost village of Durbin, which has been overrun with sludge panthers, on Talus.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_6);

wed_scav_hint_7 = ConvoScreen:new {
	id = "wed_scav_hint_7",
	leftDialog = "@player_quest:wed_scav_hint_7", --You need to find the best man's speech, which is located somewhere near a fenced-in geyser on Endor.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_7);

wed_scav_hint_8 = ConvoScreen:new {
	id = "wed_scav_hint_8",
	leftDialog = "@player_quest:wed_scav_hint_8", --You need to find a ring bearer's pillow, which is located somewhere near a maze on Tatooine.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_8);

wed_scav_hint_9 = ConvoScreen:new {
	id = "wed_scav_hint_9",
	leftDialog = "@player_quest:wed_scav_hint_9", --You need to find Liakhara's ring, which is located somewhere near nine burning stones on Lok.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_9);

wed_scav_hint_10 = ConvoScreen:new {
	id = "wed_scav_hint_10",
	leftDialog = "@player_quest:wed_scav_hint_10", --You need to find a ceremonial nalargon, which is located somewhere near three faces in a cliff on Yavin IV.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_hint_reply_01", "stop"} --Thank you, I will find it for you.
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_hint_10);

wed_scav_return = ConvoScreen:new {
	id = "wed_scav_return",
	leftDialog = "@player_quest:wed_scav_in_progress", --Have you found the item we need?  Oh, please do say you have it!
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_return_reply_01", "examine_item"} --Is this the item you're looking for?
	}
}
weddingScavHuntConvoTemplate:addScreen(wed_scav_return);

examine_item = ConvoScreen:new {
	id = "examine_item",
	leftDialog = "@player_quest:wed_scav_examine_item", --Give me a moment to check, and speak to me again.
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(examine_item);

give_item = ConvoScreen:new {
	id = "give_item",
	leftDialog = "@player_quest:wed_scav_give_item", --Indeed!  You have found it!
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_give_item_reply_01", "scav_begin"} --Is there anything else you'd like me to find?
	}
}
weddingScavHuntConvoTemplate:addScreen(give_item);

reset_quest = ConvoScreen:new {
	id = "reset_quest",
	leftDialog = "@player_quest:wed_scav_reset_quest", --I don't see that you have it with you, unfortunately.  I'm going to have to ask you to go back and check the area again.
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(reset_quest);

give_reward = ConvoScreen:new {
	id = "give_reward",
	leftDialog = "@player_quest:wed_scav_give_reward", --You have found everything Paradym and Liakhara need, I need make no further demands upon your time.  Please, take your choice of a reward from this list.
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_give_reward_reply_01", "give_reward_1"}, --Galactic Love Painting
		{"@player_quest:wed_scav_give_reward_reply_02", "give_reward_2"}, --Doaba Guerfel 17-Year Scotch Schematic
		{"@player_quest:wed_scav_give_reward_reply_03", "give_reward_3"}, --Large Blue Rug
		{"@player_quest:wed_scav_give_reward_reply_04", "give_reward_4"}, --Wedding Gazebo Camp Schematic
		{"@player_quest:wed_scav_give_reward_reply_05", "give_reward_5"}, --Toxic Peko Peko Mount Schematic
		{"@player_quest:wed_scav_give_reward_reply_06", "give_reward_6"} --Trenchcoat Suit Jacket
	}
}
weddingScavHuntConvoTemplate:addScreen(give_reward);

give_reward_1 = ConvoScreen:new {
	id = "give_reward_1",
	leftDialog = "@player_quest:wed_scav_already_completed", --Thank you so much for the assistance you rendered!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(give_reward_1);

give_reward_2 = ConvoScreen:new {
	id = "give_reward_2",
	leftDialog = "@player_quest:wed_scav_already_completed", --Thank you so much for the assistance you rendered!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(give_reward_2);

give_reward_3 = ConvoScreen:new {
	id = "give_reward_3",
	leftDialog = "@player_quest:wed_scav_already_completed", --Thank you so much for the assistance you rendered!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(give_reward_3);

give_reward_4 = ConvoScreen:new {
	id = "give_reward_4",
	leftDialog = "@player_quest:wed_scav_already_completed", --Thank you so much for the assistance you rendered!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(give_reward_4);

give_reward_5 = ConvoScreen:new {
	id = "give_reward_5",
	leftDialog = "@player_quest:wed_scav_already_completed", --Thank you so much for the assistance you rendered!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(give_reward_5);

give_reward_6 = ConvoScreen:new {
	id = "give_reward_6",
	leftDialog = "@player_quest:wed_scav_already_completed", --Thank you so much for the assistance you rendered!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(give_reward_6);

are_you_sure = ConvoScreen:new {
	id = "are_you_sure",
	leftDialog = "@player_quest:wed_scav_are_you_sure", --Are you quite sure you wish to stop?  Liakhara and Paradym will be so dismayed if their wedding cannot move forward as planned, and you will lose all progress if you decide to help again!
	stopConversation = "false",
	options = {
		{"@player_quest:wed_scav_are_you_sure_reply_01", "refuse_quest"}, --Yes, I want to stop doing these tasks.
		{"@player_quest:wed_scav_are_you_sure_reply_02", "thanks_for_staying"} --On second thought, I'll keep going.
	}
}
weddingScavHuntConvoTemplate:addScreen(are_you_sure);

thanks_for_staying = ConvoScreen:new {
	id = "thanks_for_staying",
	leftDialog = "@player_quest:wed_scav_thanks_for_staying", --Oh, thank you for deciding to keep helping!  It will be so appreciated!
	stopConversation = "true",
	options = {}
}
weddingScavHuntConvoTemplate:addScreen(thanks_for_staying);

addConversationTemplate("weddingScavHuntConvoTemplate", weddingScavHuntConvoTemplate);

