/// @desc ???

application_surface_draw_enable(false);


ppfx_id = new PPFX_System();

var effects = [
    new FX_Bloom(true,2,.1,2,c_white),

];


main_profile = new PPFX_Profile("Main", effects);

// Load profile, so all effects will be used.
ppfx_id.ProfileLoad(main_profile);

