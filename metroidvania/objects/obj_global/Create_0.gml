/// @desc ???
global.test = 0;
game_set_speed(60, gamespeed_fps);
global.Paused = false;
global.double_jump = false;
global.double_speed = false;
global.thrustjump = false;
global.groundpound = false;
global.doublebeat = false;
global.beatCount = 8;
global.jump = false;
global.test2 = 0;
global.ledgegrab = false;
global.doublebeat_enable = false;
global.success_jumps = 0;
global.jumpheight = 0;
global.jump_timer = 0;
global.jump_on_2 = false;
global.jump_failed = 0;
global.newFontLarge = font_add("blocks-extended.ttf",12,true,true,32,128);

global.newFontsmall = font_add("blocks-extended.ttf",10,false,false,32,128);
draw_set_font(global.newFontLarge);
global.speedrun_timer = 0;

global.text_up = false;

global.collectable = 0;