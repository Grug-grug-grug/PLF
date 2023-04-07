global.midTransition = false;


function TransitionPlaceSequence(_type) 
{
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-99999, "transition");
	layer_sequence_create(_lay,0,0,_type);
}

function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if (!global.midTransition)
	{

		global.midTransition = true;
		global.startupRoomTransition = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function TransitionChangeRoom()
{
	room_goto(global.startupRoomTransition);
}

function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}

function TransitionStartGame(_roomTarget, _typeOut)
{
	if (!global.midTransition)
	{
		instance_deactivate_all(1);
		global.midTransition = true;
		roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		layer_reset_target_room();
		instance_activate_all();
		return true;
	}
	else return false;
}