/// @description Fires arrow based on arrow type

if mouse_pressed_in_room{
	//arrow_angle = point_direction(x,y, mouse_x, mouse_y)

	/*
	if(arrow_type == 2 || arrow_type == 3 ){
		if(arrow_portal_type){
				arrow_type = 2;
				arrow_portal_type = false;
				portal_arrow_1_amount -= 1;
				current_arrow_amount = portal_arrow_1_amount;
			
		}
		else{
				arrow_type = 3
				arrow_portal_type = true;
				portal_arrow_2_amount -= 1
				current_arrow_amount = portal_arrow_2_amount
			
		}
		
	}
	*/
	
	if(arrow_type == 2){
				portal_arrow_1_amount -= 1;
				current_arrow_amount = portal_arrow_1_amount;
			
	}
	
	if(arrow_type == 3){
			portal_arrow_2_amount -= 1
			current_arrow_amount = portal_arrow_2_amount
	}
	
	
	if(arrow_type == 1){
			gravity_arrow_amount -= 1
			current_arrow_amount = gravity_arrow_amount
		
		//audio_play_sound(snd_release_arrow_gravity, 0, 0)
	}
	
	
	if(arrow_type == 0){
			normal_arrow_amount -= 1
			current_arrow_amount = normal_arrow_amount
		
		//audio_play_sound(snd_release_arrow_gravity, 0, 0)
	}
	

	if (current_arrow_amount >= 0){
		instance_create_layer(x,y,"Instances", obj_arrow, 
		{
			speed : arrow_speed,
			direction: arrow_angle,
			image_angle: arrow_angle,
			arrow_type: arrow_type,
		})
	
		previous_angle = arrow_angle;
		previous_power = arrow_speed;
	}

	arrow_speed = 2;

	isAim = false
}
//sprite_index = spr_character_idle