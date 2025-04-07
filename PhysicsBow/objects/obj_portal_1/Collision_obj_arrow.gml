/// @description Teleport

if(!instance_exists(obj_portal_2)){
	instance_destroy(other)
}
else if(other_portal==noone){
	var x_offset = x - other.x
	var y_offset = y - other.y
	
	
	var angle_diff = (image_angle - obj_portal_2.image_angle)
	var angle_rotate = 0;
	
	// HAVE TO MAKE REFLECTION ON THE OTHER PORTAL SCRIPT EVENT AS WELL
	
	//if (angle_diff == -270){angle_diff = 270}
	
	//angle_diff = abs(angle_diff)
	
	switch(angle_diff){
		case 0:
			show_debug_message("Same Direction Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 180;
			break;
			
		case 90:
			show_debug_message("Perpendicular Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 90;
			break;
			
		case 180:
			show_debug_message("Opposite facing Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			angle_rotate = 0;
			break;
			
		case 270:
			show_debug_message("Perpendicular facing Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 270;
			break;
			
		case -90:
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 270;
			break;
			
		case -270:
			show_debug_message("Perpendicular Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 90;
			break;
		
	}
	
	other.x = obj_portal_2.x + 2 * obj_portal_2.x_offset;
	other.y = obj_portal_2.y + 2 * obj_portal_2.y_offset;
	
	// Apply angle rotation to velocity (Transform hspeed, vspeed)
    var new_speed = point_distance(0, 0, other.hspeed, other.vspeed); // Get speed magnitude
    var new_direction = point_direction(0, 0, other.hspeed, other.vspeed); // Get movement direction

	show_debug_message(direction)
    new_direction += angle_rotate; // Rotate velocity to match new portal orientation
	show_debug_message(direction)
	
    // Convert back to hspeed and vspeed
    other.hspeed = lengthdir_x(new_speed, new_direction);
    other.vspeed = lengthdir_y(new_speed, new_direction);
		
	other.image_angle += angle_rotate
	other.teleport_cooldown = 0;
}
else{
	var x_offset = x - other.x
	var y_offset = y - other.y
	
	
	var angle_diff = (image_angle - other_portal.image_angle)
	var angle_rotate = 0;
	
	//if (angle_diff == -270){angle_diff = 270}
	
	//angle_diff = abs(angle_diff)
	
	switch(angle_diff){
		case 0:
			show_debug_message("Same Direction Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 180;
			break;
			
		case 90:
			show_debug_message("Perpendicular Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 90;
			break;
			
		case 180:
			show_debug_message("Opposite facing Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			angle_rotate = 0;
			break;
			
		case 270:
			show_debug_message("Perpendicular facing Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 270;
			break;
			
		case -90:
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 270;
			break;
			
		case -270:
			show_debug_message("Perpendicular Portals");
			if(image_angle == 0 || image_angle == 180){
				show_debug_message("Horizontal Portals");
				
			}
			else{
				show_debug_message("Vertical Portals");
				
			}
			
			angle_rotate = 90;
			break;
		
	}
	
	
	other.x = other_portal.x + 2 * other_portal.x_offset;
	other.y = other_portal.y + 2 * other_portal.y_offset;
	
	// Apply angle rotation to velocity (Transform hspeed, vspeed)
	var new_speed = point_distance(0, 0, other.hspeed, other.vspeed); // Get speed magnitude
	var new_direction = point_direction(0, 0, other.hspeed, other.vspeed); // Get movement direction

	show_debug_message(direction)
	new_direction += angle_rotate; // Rotate velocity to match new portal orientation
	show_debug_message(direction)
	
	// Convert back to hspeed and vspeed
	other.hspeed = lengthdir_x(new_speed, new_direction);
	other.vspeed = lengthdir_y(new_speed, new_direction);
		
	other.image_angle += angle_rotate
	other.teleport_cooldown = 0;
}


	
