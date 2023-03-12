/// @desc ???

lerp_progress += (1 - lerp_progress) / 50;
text_progress += global.text_speed;

x1 = lerp(x1,x1_target, lerp_progress);
x2 = lerp(x2,x2_target, lerp_progress);

if keyboard_check_pressed(vk_space)
	{
		var _messageLength = string_length(my_text);
		if text_progress >= _messageLength
			{
				instance_destroy();
				if instance_exists(obj_queued_text)
					{
						with (obj_queued_text) ticket--;
					}
				else
					{
						with (obj_player) state = lastState;
					}
			}
		else
			{
				if text_progress > 2
					{
						text_progress = _messageLength;
					}
			}
	}

