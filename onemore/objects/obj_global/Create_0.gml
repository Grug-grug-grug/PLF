/// @desc ???
randomize();
global.newFont = font_add("blocks-serif.ttf",8,false,false,32,128);
global.first_key = 0;
global.key_bedroom = 0;
global.bb_note = 0;
global.bb_door = 0;

global.time_left = 15;
global.showtime = global.time_left;
global.text_speed = 0.75;
global.game_pause = false;
global.loopnumber = irandom_range(100000,120000);
global.current_loop = 1;
global.newloop = 1;

global.linkID= 0;
global.option= 0;
global.bed = 0;

global.common_computer = 0;


global.chat_active = 0;

global.page__ = 0;
global.page_number__ = 0;

// Puzzle variables
// Sleep room
global.safe_counter = 0;
global.safe_key = 0;
global.puzzle_1 = 0;