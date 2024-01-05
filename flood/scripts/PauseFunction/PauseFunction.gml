function pause_game() {
	with(oPauseButtom) {
		if !paused {
			if !surface_exists(paused_surf) {
				if paused_surf == -1 {
					instance_deactivate_all(true);
					instance_activate_object(oPauseMenuButtoms);
				}
				paused_surf = surface_create(room_width, room_height);
				surface_set_target(paused_surf);
				draw_surface(application_surface, 0, 0);
				surface_reset_target();
			}
			paused = true;
		} else {
			instance_activate_all();
			instance_deactivate_object(oPauseMenuButtoms);
			surface_free(paused_surf);
			paused_surf = -1;	
			paused = false;
		}
		
	}
}