/// @desc ???

// straight down dig
if place_meeting(x,y-1,obj_dog)
{
	if keyboard_check(vk_control) && keyboard_check(vk_down) && !keyboard_check(vk_left) && !keyboard_check(vk_right) 
			{
				obj_dog.x=floor(obj_dog.x/16) * 16+8; 
				obj_dog.y=floor(obj_dog.y/16) * 16+8;
				dig_count += 1 * obj_global.fast_dig;
				image_alpha = block_density - dig_count/100
				if dig_count > dig_total
				{
					instance_destroy();
					if block_density > 0.9
					{
						obj_global.food -= 10;
						obj_global.water -= 10;
						image_blend = c_maroon;
					}
					else
					{
						obj_global.food -= 2;
						obj_global.water -= 2;
						image_blend = c_olive;
					}
					
					instance_create_layer(x,y,"prizes",obj_prize);
				}
				
			}
		
}
// 
if place_meeting(x+1,y,obj_dog)
{
	if keyboard_check(vk_control) && keyboard_check(vk_down) && keyboard_check(vk_left)  && obj_dog.on_ground
			{
				obj_dog.x=floor(obj_dog.x/16) * 16+8; 
				obj_dog.y=floor(obj_dog.y/16) * 16+8;
				dig_count += 1 * obj_global.fast_dig;
				image_alpha = block_density - dig_count/100
				if dig_count > dig_total
				{
					instance_destroy();
					if block_density > 0.9
					{
						obj_global.food -= 10;
						obj_global.water -= 10;
					}
					else
					{
						obj_global.food -= 2;
						obj_global.water -= 2;
					}
					instance_create_layer(x,y,"prizes",obj_prize);
				}
				
			}
		
}


if place_meeting(x-1,y,obj_dog)
{
	if keyboard_check(vk_control) && keyboard_check(vk_down) && keyboard_check(vk_right) && obj_dog.on_ground
			{
				obj_dog.x=floor(obj_dog.x/16) * 16+8; 
				obj_dog.y=floor(obj_dog.y/16) * 16+8;
				dig_count += 1 * obj_global.fast_dig;
				image_alpha = block_density - dig_count/100
				if dig_count > dig_total
				{
					instance_destroy();
					if block_density > 0.9
					{
						obj_global.food -= 10;
						obj_global.water -= 10;
					}
					else
					{
						obj_global.food -= 2;
						obj_global.water -= 2;
					}
					instance_create_layer(x,y,"prizes",obj_prize);
				}
				
			}
		
}