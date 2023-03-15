/// @desc ???
randomize();
global.newFont = font_add("blocks-serif.ttf",8,false,false,32,128);

global.time_left = 10;
global.text_speed = 0.75;
global.game_pause = false;
global.loopnumber = irandom_range(100000,120000);
global.current_loop = 1;
global.newloop = 1;
global.chat_active = 0;

// Sleep room keys
global.secret_block = 0;
global.first_key = 0;
global.key_bedroom = 0;
global.safe_key = 0;
global.puzzle_1 = 0;

// Sleep room Puzzle variables

global.bb_note = 0;
global.bb_door = 0;
global.option= 0;
global.bed = 0;
global.common_computer = 0;
global.safe_counter = 0;

