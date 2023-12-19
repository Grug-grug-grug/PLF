/// @description Insert description here
// You can write your code in this editor

global.rot_speed = 1;
global.boss_phase = 1;
global.sppinny_dead = 0;
global.bs = 0;
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id, .5);

var lay_id1 = layer_get_id("Backgrounds_1");
var back_id1 = layer_background_get_id(lay_id1);
layer_background_alpha(back_id1, .5);
global.points = 0;