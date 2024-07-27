/// @desc ???

if obj_global.current_shield_health == 0 and obj_global.total_shield_health > 0 {
instance_create_layer(x,y,"Bullets",obj_shield_destroyed)
instance_destroy();
}


if obj_global.current_shield_health == 0 {instance_destroy()};






