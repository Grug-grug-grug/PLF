/// @desc ???

application_surface_draw_enable(false);


ppfx_id_screen = new PPFX_System();

var effects = [
    new FX_Bloom(true,2,.1,2,c_white),

];


main_profile1 = new PPFX_Profile("Main", effects);

// Load profile, so all effects will be used.
ppfx_id_screen.ProfileLoad(main_profile1);

