
if stuck_on && !instance_exists(stuck_on_object){
	inMotion = true
	stuck_on = false
}

if(inMotion){
	angle = point_direction(0,0,hspeed,vspeed)
	image_angle = angle
	gravity = saved_gravity
	
	
	if (arrow_trail_counter % arrow_trail_frequency == 0) { // Drop trail every few frames
    instance_create_layer(x - 1.5 * hspeed, y - 2 * vspeed, "Instances", obj_arrow_trail, 
	{image_angle: angle, image_xscale: speed +.15, image_yscale: 2,
	 image_alpha: .75, lifetime: 30, type: arrow_type})
	}
	
	arrow_trail_counter += 1

}

// Check if the arrow is outside the room
if (x < 0 || x > room_width || y > room_height) {
    // Destroy the arrow if it is outside the room
    instance_destroy();
}

if(teleport_cooldown == 0){
	teleport_cooldown--;
}


	