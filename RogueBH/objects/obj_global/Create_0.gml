/// @desc ???
// set default font
//draw_set_font(fnt_default);

// Level metadata
level = 1;
death_metadata = [];
total_deaths = 0;
destroyed_enemy = 0;
bullets_left = 6;
level_timer = 0;
player_health = 3;
player_health_max = 3;

// scoring
// score is total deaths, time, enemies destroyed

// how many hacks to clear the level
total_number_of_hacks = 0;
current_hacks = 0;


// shield health
current_shield_health = 0;
total_shield_health = 0;

// a bunch of intro text
intro_text = 1

// Level 1 - Tutorial
if level == 1
{
	total_number_of_hacks = 3;
	completed_repetitions_required = 0;
	number_of_repetitions_required = 5;
}