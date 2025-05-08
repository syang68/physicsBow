/// @description Insert description here
// You can write your code in this editor
sineWave = 0 + (1 +sin(2*pi*current_time/1000 * 0.30)) * 0.8

move_wrap(true, true, respawn_pixel_distance);

if (hit){
	image_alpha -= .05
	
	if(image_alpha <= 0){instance_destroy()}
}



if (can_be_invisible){
	/*
	if (image_alpha <= 0){
		alpha_rate *= -1
	}
	if(image_alpha >= 1){
		alpha_rate *= -1
	}
	
	if (image_alpha <= 0){
		image_alpha = 0
		
		if(invisible_time < wait_time){
			invisible_time ++
			alpha_rate = 0
		}
		else{
			invisible_time = 0
			alpha_rate = alpha_rate_holder
		}
	}
	
	image_alpha += alpha_rate
	*/
	
		
	if fade_out{
		image_alpha -= alpha_rate
	}
	else{
		image_alpha += alpha_rate
	}

	if image_alpha < -1{
		fade_out = false
	}

	if image_alpha > 1{
		fade_out = true
	}

	//show_debug_message(image_alpha)
	
}



if (image_alpha <=0 && !collision_disabled){
	sprite_index = noone
	show_debug_message("Collision OFF")
	collision_disabled = true
}
else if(image_alpha > 0 && collision_disabled){
	sprite_index = sprite_holder
	show_debug_message("Collision ON")
	collision_disabled = false
}