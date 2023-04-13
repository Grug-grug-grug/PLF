/// @desc ???
randomize();
global.newFont = font_add("blocks-extended.ttf",7,true,false,32,128);
global.newFontBoss = font_add("blocks-extended.ttf",7,true,true,32,128);
global.newFontLarge = font_add("blocks-extended.ttf",24,true,true,32,128);
global.first_digit = 1 ;
global.startupRoomTransition = "";
global.newloop = 1;
global.intro_txt_done = 0;

global.text_speed = 0.75;
global.game_pause = false;
global.chat_active = 0;
global.text_centre = false;

// Sleep room keys
global.secret_block = 0; // nothing
global.first_key = 0; // currently just a key on the floor 
global.puzzle_1 = 0; // nothing

// Sleep room Puzzle variables
global.bb_door_opened = false; // check if the first door is open
global.key_bedroom = 0; //
global.key_bedroom_top_left = 0; //
global.key_bedroom_bottom_right = 0; //
global.key_bedroom_top_right = 0; // 
global.bottom_right_key = 0 ;// the key in the bottom right room for the top left room
global.bb_note = 0; // turns to 1 when you get that note
global.bb_door = 0; // turns to 1 when you first leave the bedroom
global.safe_key = 0; //  key for the common room 
global.safe_counter = 0; // safe counter for the common room key

global.test1 = 0;
global.test2 = 0;

global.bed = 0;
global.common_computer = 0;


// Boss counters
global.boss_01 = false;
global.boss_01_outcome = 0;
global.boss_01_outcome_wakeup = 0;

