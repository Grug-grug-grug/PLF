/// @desc ???





rewind_step_counter += int64(delta_time/10000)

// Add current step's data to the list as an array
if (!rewind_key) && rewind_step_counter & 10 == 0 // Not being rewinded
   ds_list_add(td, [obj_player.x, obj_player.y]); // <- You gotta store as much data as you can, to make the reverse realistic



// Now to rewind
var size = ds_list_size(td);

if (rewind_key && size + td_rewind > 0) { // Second condition makes sure that we don't go past the list size
   td_rewind--; // Go back

   // Reapply data from list
   var arr = td[| size + td_rewind];
   obj_player.x = arr[0];
   obj_player.y = arr[1];
   obj_flash.image_alpha = (-td_rewind)/size;
   obj_scroller_rm1.rewind = -1;
}

if size * -1 == td_rewind
{
	room_restart();
}

