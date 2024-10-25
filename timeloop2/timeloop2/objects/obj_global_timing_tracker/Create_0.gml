/// @desc ???
// what loop are you on
current_loop = 1;

// track the time in the current loop
time_tracker = 0;

// the length of each loop and loop tracker
loop_length = 30;
current_loop = 0;

// variables when moving between rooms
new_x = 90;
new_y = 570;

// is the game paused
pause = false

// vairable to hold text box generation boolean at end of loop
endofloopchat = 0;

// pixellate effect for start and end of loop
pixelate_fx_level = 60;
pixelate_fx = layer_get_fx("Pixelate");
pixelate_fx_params = fx_get_parameters(pixelate_fx);

random_number = irandom_range(0,10);

// for the drinking
typist = scribble_typist();
type_speed = random_range(1,.1)
typist.in(type_speed, 0);
drinking = false