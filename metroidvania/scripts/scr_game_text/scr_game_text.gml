/// @param text_id
function scr_game_text(_text_id){
	
	switch(_text_id) {
		
		case "room1":
			scr_text("What was that?!??!");
			break;
		
		case "room2":
			scr_text("It come from right outside my room..");
			break;
			
		case "city1":
			scr_text("Well I can't \n get back in this way..."); 
			break;
			
		case "city2":
			scr_text("Daaaaaaaaaaaaaaaang"); 
			break;
			
		case "city3":
			scr_text("I can get back in \n from over there"); 
			break;
					
		case "city4":
			scr_text("Well that was horrbile....\n Where am I..?"); 
			break;
					
		case "city5":
			scr_text("What on earth....?"); 
			break;
			
		case "city_ladder":
			scr_text("Looks like I should be \n able to climb up here"); 
			break;
	}
}