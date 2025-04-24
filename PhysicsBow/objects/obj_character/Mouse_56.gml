/// @description Fires arrow based on arrow type

if mouse_pressed_in_room{
	//arrow_angle = point_direction(x,y, mouse_x, mouse_y)

	if(arrow_type == 2 || arrow_type == 3 ){
		if(arrow_portal_type){
			arrow_type = 2;
			arrow_portal_type = false;	
			portal_arrow_1_amount -= 1
		}
		else{
			arrow_type = 3
			arrow_portal_type = true;
			portal_arrow_2_amount -= 1
		}
		
	}
	
	if(arrow_type == 1){
		gravity_arrow_amount -= 1
	}

	instance_create_layer(x,y,"Instances", obj_arrow, 
	{
		speed : arrow_speed,
		direction: arrow_angle,
		image_angle: arrow_angle,
		arrow_type: arrow_type,
	})
	
	previous_angle = arrow_angle;
	previous_power = arrow_speed;

	arrow_speed = 2;

	isAim = false
}
//sprite_index = spr_character_idle