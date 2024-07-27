/// @desc ???
// alarm[0] event:
if i == 1
{
	
	text_returned = transition_script(t_script);
	raw_text = text_returned[0];
	text_speed = text_returned[1];
	next_room = text_returned[2];
}
if(i<string_length(raw_text)+1){
    new_text += string_char_at(raw_text,i);
    i += 1;
    alarm[0] = text_speed;
}
if(i == string_length(raw_text)+1){

    alarm[1] = 30;
}









