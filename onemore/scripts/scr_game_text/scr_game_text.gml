/// @param text_id
function scr_game_text(_text_id){
	
	switch(_text_id) {
		
	case "pre_game_txt":
		scr_text("Uh dear");
		scr_text("uh no");
		scr_text("uh no2");

		
		break;
		
	case "intro_text":
		scr_text("As we approach the end of 24XX, humanity has reached the stars. Through exciting new technology, the crew of XXX are able to travel outside the heliosphere to test the ability to create and destroy a new energy source - a blackhole. It was theorised Hawking radiation would provide limitless energy, and the opportunity to study a blackhole allows humanity to peak into the creative forces of the universe. ", .4, spr_none,10,true,310, global.newFontBoss);
		
		break;
		
	case "response_creepy_1":
		scr_text("I really hate this ", 1, spr_eye);
		break;
	
	case "response_creepy_2":
		scr_text("This is sucky", 1, spr_none);
		break;
	
	
	// test walkover text box
	case "creepy_1":     
		scr_text(" t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r t h i s d o e s n o t m a t t e r ", 10  , spr_none ,2,true,320);
		break;
	
	case "creepy_2":
		scr_text("thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter ", 10, spr_none,2,true,320);
		break;
	
	case "creepy_3":
		scr_text("thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter ", 10, spr_none, 4,true,320);
		break;
		
	case "creepy_4":
		scr_text("thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter thisdoesnotmatterthisdoesnotmatterthisdoesnotmatterthisdoesnotmatter ", 10, spr_none, 8,true,320);
		global.time_left = 0.01;
		break;
		
	// Start game
	case "start_game":
		scr_text("Ah, this dream again", 1, spr_none);
		scr_text("If I didn't know any better, I would say this means something", 1, spr_eye);
		scr_text("But I don't, and it doesn't", 1, spr_none);
		break;
		
	// maybe generic text
	case "door_closed":
		var _door_int = irandom_range(1,10);
		if _door_int == 1
		{
			scr_text("Door is shut buddy");
		}
		if _door_int == 2
		{
			scr_text("This is definitely a shut door");
		}
		if _door_int == 3
		{
			scr_text("It is like an open door, but shut");
		}
		if _door_int == 4
		{
			scr_text("Come back later");
		}
		if _door_int == 5
		{
			scr_text("Come on in");
			scr_text(".....");
			scr_text(".........");
			scr_text("I guess the door is shut");
		}
		if _door_int == 6
		{
			scr_text("Come back when the door is unshut");
		}
		if _door_int == 7
		{
			scr_text("Knock knock");
			scr_text("Who is there?");
			scr_text("I don't know because the door is shut");
		}
		if _door_int == 8
		{
			scr_text("Door not open bruh");
		}
		if _door_int == 9
		{
			scr_text("An opposite of an open door");
		}
		if _door_int == 10
		{
			scr_text("That is one shut door");
		}
		break;
	
	// First key in bedroom
	case "bedroom_notes_1":
		scr_text("My room and just the way I like it - chaos.");
		break;
			
	case "bedroom_notes_2":
		scr_text("Books and notes everywhere - why am I like this...");
		break;
			
	case "bedroom_notes_3":
		scr_text("*I don't know why I have to keep reminding everyone, but your passcode will need to be changed every 14 days*");
		scr_text("*This is day one stuff guys, help me help you*");
		scr_text("*Kim - admin and apparant passcodeking*");
		break;
			
	case "bedroom_notes_4":
		scr_text("A book on dogs. A dog book.");
		break;
			
	case "bedroom_notes_5":
		scr_text("Various books on various topics.");
		break;
			
	case "bedroom_notes_6":
		scr_text("*Note to self - keep passcode somewhere I spend most of my time - me*");
		global.bb_note = true;
		break;
				
	case "bedroom_notes_7":
		scr_text("A book about space, I will get to it one day");
		break;
			
	case "bedroom_notes_8":
		scr_text("*Due to complete indifference, I will now update everyone's passcode.*");
		scr_text("*Please find attached your new passcode*")
		scr_text("Looks like I ripped off the new door code...");
		break;
		
	case "beanbag_myroom":
		scr_text("A comfy womfy bean bag - my favourite place");
		if global.bb_note == true
		{
			scr_text("...and a note that says 2123");
		}
		break;
		
	case "bedroom_table":
		scr_text("Look at this, keeping their notes tidy and on a table. What a dork.");
		break;
	
	// Room code 2123
	case "the_first_door":
		if global.bb_door == 4
		{
			scr_text("Already open my dude");
			break;
		}
		if global.bb_door == 0 and global.current_loop < 4
		{
		scr_text("Lets do this thang");
			scr_option("1", "bb_incorrect");
			scr_option("2", "1st_b_correct");
			scr_option("3", "bb_incorrect");
		break;
		}
		if global.current_loop > 3 and global.bb_door_opened_once == true
		{
			scr_text("Same!");
			global.bb_door = 4;
			global.bb_door_opened = true;
			break;
		}
		
	case "1st_b_correct":
	    global.bb_door += 1;
		scr_text("And then...");
		scr_option("1", "2nd_bb_correct");
		scr_option("2", "bb_incorrect");
		scr_option("3", "bb_incorrect");
		break;
		
	case "2nd_bb_correct":
		global.bb_door += 1;
		scr_text("And then...");
		scr_option("1", "bb_incorrect");
		scr_option("2", "3rd_bb_correct");
		scr_option("3", "bb_incorrect");
		break;
		
	case "3rd_bb_correct":
		global.bb_door += 1;
		scr_text("And then...");
		scr_option("1", "bb_incorrect");
		scr_option("2", "bb_incorrect");
		scr_option("3", "bb_door_open");
		break;	
		
	case "bb_door_open":
		scr_text("Open!");
		global.bb_door = 4;
		global.bb_door_opened = true;
		global.bb_door_opened_once = true;
		break;

	
	case "bb_incorrect":

		if global.bb_door < 3
		{
			
			scr_text("And then...");
			scr_option("1", "bb_incorrect");
			scr_option("2", "bb_incorrect");
			scr_option("3", "bb_incorrect");
			global.bb_door += 1; 
			break;
		}
		if global.bb_door  == 3
		{
			scr_text("Dang!");
			global.bb_door = 0;
			break;
		}
	
	// Not sure
	case "secret_block":
		scr_text("what the gibbons");
		global.secret_block = 1;
		break;
	
	// Not sure
	case "oh_dear":
		scr_text("oh bother");
		break;
		
	// Plants in BB
	case "bb_computer":
		scr_text("...........");
		scr_text("...........");
		scr_text("...booting...");
		scr_text("...........");
		scr_text("...[ERROR - 10221]...");
		scr_text("...[ERROR - 10221]...");
		scr_text(".");
		scr_text(".");
		scr_text(".");
		scr_text("");
		scr_text("");
		scr_text(" p o i n t l e s s n o t h i n g g i v e u p n o t h i n g n o t h i g ");
		break;
		
	// Bookshelf next to computer
	case "bb_bookshelf":
	
		scr_text("Anything here worth reading?");
		scr_option("Error Handling 101", "bb_bs_1");
		scr_option("The day in the life of Dog", "bb_bs_2");
		scr_option("The key to success", "bb_bs_3");
		scr_option("Naa", "bb_bs_4");
		break;
		
	case "bb_bs_1":
	
		scr_text("A hundred pages of how to handle errors");
		break;
		
	case "bb_bs_2":
	
		scr_text("Wake up, eat, play, sleep, repeat");
		break;
		
	case "bb_bs_3":
	
		scr_text("Just be more good and less ungood");
		break;
		
	case "bb_bs_4":
	
		scr_text("Books are for nerds");
		break;
		
	// Plants in BB
	case "bb_book_1":
		scr_text("The first edition of a book");
		break;
	
	case "bb_book_2":
		scr_text("The sequel to some YA vampire novel");
		break;
		
	case "bb_book_3":
		scr_text("Third times a charm");
		break;
		
	case "bb_book_4":
		scr_text("The final chapter");
		break;
		
	case "bb_plant_1":
		scr_text("Plant 1");
		break;
	
	case "bb_plant_2":
		scr_text("Plant 2");
		break;
		
	case "bb_plant_3":
		scr_text("Plant 3");
		break;
		
	case "bb_plant_4":
		scr_text("Plant 4");
		break;
	
	// Enter quarters for the first time
	case "bb_enter_quarters":
		if global.current_loop == 1
		{
		scr_text("Uhhhhhhhhh.......");
		scr_text(".......");
		scr_text("Uhhhhhhhhh.......");
		scr_text("....where is everyone?");
		scr_text("And why is everything locked up?");
		break;
		}
		if global.current_loop == 2
		{
		scr_text("Uhhhhhhhhh.......");
		scr_text(".......");
		scr_text("Uhhhhhhhhh.......");
		scr_text("....so I have to do it all again?");
		scr_text(".....");
		break;
		}
		
	case "bb_near_door":
		if global.current_loop == 1
		{
		scr_text("Uhhhhhhhhh.......");
		scr_text(".......");
		scr_text("Uhhhhhhhhh.......");
		scr_text("....why is my door locked?");
		}
		if global.current_loop == 2
		{
		scr_text("...So is it the same combo...?");
		}
		if global.current_loop == 3
		{
		scr_text("I'm going assume it's always the same...");
		}
		break;
	
	// bb keys
	// key in bottom right room for top left room
	case "key_bedroom_top_left":
		scr_text("Well, this was low effort. The key was right here.....");
		break;
	// Wake up
	
	// bb note near bottom right room
	case "note_bottom_right":
		scr_text("** I cant do this anymore **");
		scr_text("** I'm going to find somewhere nice to sit and drink this away **");
		scr_text("I like this approach");
		break;
	
	
	case "wake_up":
		if global.current_loop == 1
		{
			scr_text("....what was that?");
			scr_text(".......");
			scr_text(".......I need a drink.....");
		}
		if global.boss_01_outcome =! 0 and global.boss_01_outcome_wakeup == 0
		{
			scr_text("....");
			scr_text("....");
			scr_text("....");
			scr_text("....");
			scr_text("....");
			scr_text("What the hell was that about....");
			global.boss_01_outcome_wakeup = 1;
		}
		if global.current_loop == 2
		{
			scr_text("....what did we do....");
		}
		if global.current_loop > 2
		{
			scr_text("Keeping count now, this will be round " + string(global.current_loop));
		}	
		break;
	
	// Secret safe - combo 1 2 3 3
	case "secret_safe":
		if global.safe_key == 1
		{
			scr_text("Already got it my dude");
			break;
		}
		if global.safe_key == 0
		{
		scr_text("Ah, there is the safe. Lets have a look");
			scr_option("1", "next_safe_correct");
			scr_option("2", "safe_incorrect");
			scr_option("3", "safe_incorrect");
		break;
		}
		
	case "next_safe_correct":
		global.safe_counter += 1
		scr_text("And then...");
		scr_option("1", "safe_incorrect");
		scr_option("2", "next_safe_correct_next");
		scr_option("3", "safe_incorrect");
		break;
		
	case "next_safe_correct_next":
		global.safe_counter += 1
		scr_text("And then...");
		scr_option("1", "safe_incorrect");
		scr_option("2", "safe_incorrect");
		scr_option("3", "next_safe_correct_final");
		break;
		
	case "next_safe_correct_final":
		global.safe_counter += 1
		scr_text("And then...");
		scr_option("1", "safe_incorrect");
		scr_option("2", "safe_incorrect");
		scr_option("3", "next_safe_keyget");
		break;	
		
	case "next_safe_keyget":
		scr_text("Got it!");
		global.safe_key = 1;
		break;
		
	case "safe_incorrect":

		if global.safe_counter < 3
		{
			
			scr_text("And then...");
			scr_option("1", "safe_incorrect");
			scr_option("2", "safe_incorrect");
			scr_option("3", "safe_incorrect");
			global.safe_counter += 1
			break;
		}
		if global.safe_counter == 3
		{
			scr_text("Dang!");
			global.safe_key = 0;
			global.safe_counter = 0;
			break;
		}
	
	// Stacks of notes in sleeping room
	
	case "sleeping_note_stack_1":
		scr_text("*The doors rooms need to be locked at all time. You have all demonstrated you cannot be trusted*")
		scr_text("*I know we have been up here a while, but that is no reason to get complacent*");
		scr_text("*It's just basic safety, it's like you want something to go wrong*");
		scr_text("*The doors will now auto-lock after 5 minutes and you need to put in the code to unlock*");
		scr_text("* - Kim aka someone who actually cares....*");
			
		break;
		
	// Stack of note in second bedroom - safe clue
	case "secret_safe_solution":
		scr_text("*Patterns are the only way I can remember anything*");
		scr_text("*So to keep it simple*");
		scr_text("*There is only one one*");
		scr_text("*And there is one two too*");
		scr_text("*And there is more then one three too aswell*");
		scr_text("* - Kim aka the one who locks*");
		break;
	
	case "npc1":
		scr_text("Hi am NPC1");
		scr_text("what>?");
			scr_option("yea", "npc1 - yes");
			scr_option("no", "npc1 - no");
			scr_option("potato", "npc1 - pot");
		break;
	
	case "npc1 - yes":
		scr_text("yes");
		break;
	
	case "npc1 - no":
		scr_text("no pp");
	
		break;
		
	case "npc1 - pot":
		scr_text("Put in a stew");
	
		break;
	
	case "npc2":
		scr_text("Hi am NPC2");
		scr_text("Hi am NPC2222");
	
			scr_option("yea", "npc1 - yes");
			scr_option("yea", "npc1 - no");
		break;
	
	
	// Sleeping Room
	
	// bar
	
	case "bar":
		if global.bar_counter == 0
		{
			scr_text("Perfect, a drink will settle my nerves");
				scr_option("Drink it down","bar_drink");
				scr_option("Not now....","bar_no_drink");
			break;
		}
		if global.bar_counter > 0 
		{
			scr_text("Another?");
				scr_option("Drink it down","bar_drink");
				scr_option("Not now....","bar_no_drink");
			break;
		}
		break;
			
	case "bar_no_drink":
		scr_text("Naaaaa");
		break;
		
	case "bar_drink":
		if global.bar_counter == 0
		{
			scr_text("There we go...");
			global.bar_counter += 1;
			break;
		}
		if global.bar_counter == 1
		{
			scr_text("Oh that is nice!");
			global.bar_counter += 1;
			break;
		}
		if global.bar_counter == 2
		{
			scr_text("Another won't hurt");
			global.bar_counter += 1;
			break;
		}
		if global.bar_counter == 3
		{
			scr_text(".......");
			global.bar_counter += 1;
			break;
		}
		if global.bar_counter == 4
		{
			scr_text(".......");
			global.bar_counter += 1;
			break;
		}
		if global.bar_counter == 5
		{
			scr_text(".......!");
			global.time_left = 1;
			break;
		}
		break;
		
	// Puzzle 1
	
	// Input 1
	case "input_1":
		if global.puzzle_1 == 0
		{
			scr_text("yepeee.")
			global.puzzle_1 = 1;
			break;
		}
		
		if global.puzzle_1 > 0
		{
			scr_text("nopeee.");
			global.puzzle_1 = 0;
			break;
		}

	
	case "input_2":
		if global.puzzle_1 == 0
		{
			scr_text("no11pe.");
			global.puzzle_1 = 0;
		}
		if global.puzzle_1 > 0
		{
			scr_text("ye22p.")
			global.puzzle_1 = 2;
		}
		break;
	
	// Key in first bedroom
	case "first_key":
		scr_text("You found a key.");
		break;
	
	
	case "bed":
	if global.bed > 5
		{
		scr_text("Now its a dog");
		}
		if global.bed > 2 && global.bed <= 5
		{
		scr_text("Its still a bed");
		global.bed++;
		}
		if global.bed <= 2
		{
		scr_text("Its a bed");
		global.bed++;
		}
		
		break;
		
	// Common Room
	
	// Computer
	case "computer_common":
		global.common_computer += 1;
		if global.common_computer < 3
		{
			scr_text("It's one of the standard computers");
			scr_text("Trust me, there is nothing special on here");
		}
		if global.common_computer > 2 and global.common_computer < 9
		{	
			scr_text("Unless I'm going to make a lame indie game I should just move on");
		}
		if global.common_computer > 8
		{	
			scr_text("Look, after checking it " + string(global.common_computer) + " times");
		}
		break;
		
	// Documents
	case "common_documents":
		scr_text("*Classic Phil, always leaving his things everywhere*")
		scr_text("*These are his proposed approaches which we all know is a load of nonsense*")
		break;
		
	// Other computer
	case "otherComputer":
		scr_text("....starting.......");
		scr_text("...................");
		scr_text("...................");
		scr_text(string(global.time_left));
		scr_text(string(global.loopnumber));
		scr_text("...................");
		scr_text(".......[ERROR - 33610]............");
		scr_text("*Fun, I wonder what that's about*");
		break;
	
	
	// Other computer
	case "boss_01":
		scr_text(".......hello.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......ivebeenwaitingforyou.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......forsolong.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......tellme.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......whatwouldyoudoifnothingmattered.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......whatifitoldyouicouldmakeyou.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......ifichangedyoutoknoweverything.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......youcouldhelpeveryone.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......fixeverything.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......butYOUwouldnotremain.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......becomeonewithus.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......wouldYOUsacrificeYOUtohelp.......",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(" e v e r y o n e ",0.1,spr_textbox,6,false,280,global.newFontBoss);
		scr_text(".......well....?...",0.1,spr_textbox,6,false,280,global.newFontBoss);
		
		scr_option("In a heartbeat","boss_01_a");
		scr_option("Not a chance","boss_01_b");
		scr_option("I'd need to know way more","boss_01_c");
		break;
		
	case "boss_01_a":
		scr_text(".......interesting....1...",0.1,spr_textbox,6,false,280,global.newFontBoss);
		global.boss_01_outcome = 1;
		break;
		
	case "boss_01_b":
		scr_text(".......interesting....2...",0.1,spr_textbox,6,false,280,global.newFontBoss);
		global.boss_01_outcome = 2;
		break;
		
	case "boss_01_c":
		scr_text(".......interesting....3...",0.1,spr_textbox,6,false,280,global.newFontBoss);
		global.boss_01_outcome = 3;
		break;
	}
}