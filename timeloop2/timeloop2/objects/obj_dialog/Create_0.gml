//Load your file.
ChatterboxLoadFromFile("NewFile.yarn"); //or whatever you called yours
ChatterboxAddFunction("bg", background_set_index);
chatterbox = ChatterboxCreate();

ChatterboxJump(chatterbox, chat_start_point);
chatterbox_update();

option_index = 0;

size = [0.1, 0.15];
colour = [c_ltgray, c_white];