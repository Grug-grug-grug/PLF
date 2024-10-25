// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @param text
function scr_text(_text, _txt_speed = .5, _txtbackground = spr_textbox, _border = 6, _top = false, _width = 280, _font = global.newFont )
{
	text_box_font = _font;
	border = _border;
	text[page_number] = _text;
	text_speed = _txt_speed;
	txtb_spr = _txtbackground;
	text_top = _top;
	page_number ++;
	line_width = _width;

}

// @param text_id

function dialog_script_draw(_text_id){
	typist = scribble_typist();
	typist.in(1, 0);
	
	switch (_text_id)
	{
		// every time you wake up
		case "wakingup":
			
			switch(ds_map_find_value(obj_global_script_tracker.my_map,"wakingup"))
			{
			case 0:
				dialog_text = "[pulse]...my head..";
			break;
			case 1:
				dialog_text = "...I see whats going on...";
			break;
			case 2:
				dialog_text = "Ill put together a to do list";
			break;
			case 3:
				dialog_text = "1. I need to find out what is happening";
				break;
			case 4:
				dialog_text = "2. I should see if anyone it around";
			break;
			case 5:
				dialog_text = "3. And check the research lab";
			break;
			case 6:
				dialog_text = "4. And the bio-lab";
			break;
			default:
				dialog_text = "......";
			break;
			}
			
		break;
		
		// finding keycode
		case "keycode":
		
			switch(ds_map_find_value(obj_global_script_tracker.my_map,"keycode"))
			{
			case 0:
				dialog_text = "it says door code?"
				obj_global_script_tracker.initial_keycode = 1
				break;
			case 1:
				dialog_text = "the same code door code?"
				break;
			case 2:
				dialog_text = ".still the same..";
				break;
			default:
				dialog_text = "......";
				break;
			}
			
			
		break;
		
		// first door
		case "doorway":
			if obj_global_script_tracker.initial_keycode == 0
			{
				dialog_text = "its locked?"
			}
			else
			{
				switch(ds_map_find_value(obj_global_script_tracker.my_map,"doorway"))
				{
				
				case 1:
					dialog_text = "...thats the code..";
					obj_global_script_tracker.bedroom_key_1 = 1
					break;
				case 2:
					dialog_text = "...same code..";
					obj_global_script_tracker.bedroom_key_1 = 1
					break;
				default:
					dialog_text = "...door is open..";
					obj_global_script_tracker.bedroom_key_1 = 1
					break;
				}
			}
			
		break;
		
		// when you get to the left door too late
		case "left_door_late":
		
			if obj_global_script_tracker.left_door_late = 0
			{
				dialog_text = "hmm... too slow..but there is a key hole"
				obj_global_script_tracker.left_door_late = 1
			}
			else if obj_global_script_tracker.left_door_late = 1
			{
				dialog_text = "still too slow... there must be a way"
				obj_global_script_tracker.left_door_late = 2
			}
			else if obj_global_script_tracker.left_door_late = 2
			{
				dialog_text = "Maybe some left some notes"
				obj_global_script_tracker.left_door_late = 3
			}
			else if obj_global_script_tracker.left_door_late = 3
			{
				randomise();
				dialog_random_number = irandom_range(0,4);
				switch dialog_random_number
				{
					case 0:
						dialog_text = "Maybe there is something in the library"
					break;
					case 1:
						dialog_text = "Read a book?"
					break;
					case 2:
						dialog_text = "...[pulse]I[/pulse] know where I should go..."
					break;
					case 3:
						dialog_text = "...am I dense..."
					break;
					case 4:
						dialog_text = "...I am dense..."
					break;
				}
				
				obj_global_script_tracker.left_door_late = 3
			}
			else if obj_global_script_tracker.left_door_late == 4
			{
				dialog_text = "Its under someones bed"
			}
			else if obj_global_script_tracker.left_door_late > 4
			{
				if obj_global_script_tracker.left_door_key == 1
				{
					randomise();
					dialog_random_number = irandom_range(0,4);
					switch dialog_random_number
					{
						case 0:
							dialog_text = "Say [wobble]FRIEND[/wobble] and enter"
						break;
						case 1:
							dialog_text = "Open!"
						break;
						case 2:
							dialog_text = "Here I come!"
						break;
						case 3:
							dialog_text = "I [wave]SHALL[/wave] pass"
						break;
						case 4:
							dialog_text = "...[pulse]OPEN..."
						break;
					}
				}
				else if obj_global_script_tracker.left_door_key == 0
				{
					dialog_text = "...its under my bed..."
				}
			}
			
		break;
		
		
		// finding the notes for the left door to lead you to the spare key under a bed
		case "left_door_late_key_note":
		
			if obj_global_script_tracker.left_door_late > 3
			{
				dialog_text = "...just gotta work out which bed..."
			}
			if obj_global_script_tracker.left_door_late < 3
			{
				dialog_text = "just some nonsense about doors in the sleeping quarter"
			}
			else if obj_global_script_tracker.left_door_late > 2
			{
				dialog_text = "ahh.... there is a [wave] secret [/wave] entrance\n...not really...\nit just says the spare key is under [pulse]someones[/pulse] bed..\n...but who?"
				obj_global_script_tracker.left_door_late = 4
			}		
		break;
		
		// my bed
		case "my_bed":
			if obj_global_script_tracker.left_door_late > 4
			{
				dialog_text = "...still under my bed..."
			}
			else if obj_global_script_tracker.left_door_late == 4
			{
				dialog_text = "...it cant be...\n it was under my bed..."
				obj_global_script_tracker.left_door_late = 5
			}
			else if obj_global_script_tracker.left_door_late < 4
			{
				
				randomise();
				dialog_random_number = irandom_range(0,4);
				switch dialog_random_number
				{
					case 0:
						dialog_text = "Probably shouldn't sleep now"
					break;
					case 1:
						dialog_text = "I'd love to...but later"
					break;
					case 2:
						dialog_text = "[wave]zzzzzzzzzzzz"
					break;
					case 3:
						dialog_text = "...am I dense..."
					break;
					case 4:
						dialog_text = "...I am dense..."
					break;
				}
			}
		break;
		
		// end of loop
		case "endloop":

			switch(ds_map_find_value(obj_global_script_tracker.my_map,"doorway"))
			{
			case 0:
				dialog_text = "what...?";
				break;
			case 1:
				dialog_text = ".noo....";
				break;
			default:
				spew_text = irandom_range(1,4)
				switch spew_text
				{
					case 1:
						dialog_text = "...shit..";
					break;
					case 2:
						dialog_text = "...this sucks ass..";
					break;
					case 3:
						dialog_text = "..flip..";
					break;
					case 4:
						dialog_text = "...dang..";
					break;
				}
			}
			
			
		break;
		
		// end of loop
		case "exit_bedroom":

			switch(ds_map_find_value(obj_global_script_tracker.my_map,"exit_bedroom"))
			{
			case 0:
				dialog_text = "[shake] what is [pulse]going[/pulse] on....";
				break;
			case 1:
				dialog_text = "umm... what?";
				break;
			default:
				randomize();
				response = obj_global_current_loop.random_number;
				switch response
				{
					case 0:
					dialog_text = "!!!";
					break;
					case 1:
					dialog_text = ".nice";
					break;
					case 2:
					dialog_text = "same same";
					break;
					case 3:
					dialog_text = "....?";
					break;
					case 4:
					dialog_text = "....! ";
					break;
					case 5:
					dialog_text = "pleease";
					break;
					case 6:
					dialog_text = "more?";
					break;
					case 7:
					dialog_text = "I remember this!";
					break;
					case 8:
					dialog_text = ".1.2..lesgo.";
					break;
					case 9:
					dialog_text = "surprise";
					break;
					case 10:
					dialog_text = ".woah...?";
					break;
				}
				
				break;
			
			}
			
			
		break;
			
		case "notes_common_1":	
			switch(ds_map_find_value(obj_global_script_tracker.my_map,"notes_common_1"))
				{
				default:
					dialog_text = "random notes about our travel out here";
					break;
		
			
				}
			
			
		break;
	}
	
	//dialog_text = "[fa_centre]" + dialog_text
	//scribble(dialog_text).draw(obj_player.x, obj_player.y+30,typist)
	return "[scale,.5]" + dialog_text;
}

function dialog_script_incrementer(_text_id){
	var other_object = instance_find(obj_global_script_tracker,0);
	var _variable_name = _text_id;
	var value = ds_map_find_value(other_object.my_map, _variable_name)
	var value = ds_map_replace(other_object.my_map, _variable_name, value + 1)
	
}