/// @description keeeping the player insede the room

// staying inside room
x = clamp(x, 32, room_width - 32);
y = clamp(y, 32, room_height - 32);
