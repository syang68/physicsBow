/// @description Fires arrow based on arrow type

if mouse_pressed_in_room{
	var angle = point_direction(x,y, mouse_x, mouse_y)

	if(arrow_type == 2 || arrow_type == 3){
		if(arrow_portal_type){
			arrow_type = 2;
			arrow_portal_type = false;
		}
		else{
			arrow_type = 3
			arrow_portal_type = true;
		}
	}

	instance_create_layer(x,y,"Instances", obj_arrow, 
	{
		speed : arrow_speed,
		direction: angle,
		image_angle: angle,
		arrow_type: arrow_type,
	})

	arrow_speed = 2;

	isAim = false
}
//sprite_index = spr_character_idle