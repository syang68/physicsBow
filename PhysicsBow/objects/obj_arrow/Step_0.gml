
if(inMotion){
	image_angle = point_direction(0,0,hspeed,vspeed)
}

// Check if the arrow is outside the room
if (x < 0 || x > room_width || y > room_height) {
    // Destroy the arrow if it is outside the room
    instance_destroy();
}

if(teleport_cooldown == 0){
	teleport_cooldown--;
}