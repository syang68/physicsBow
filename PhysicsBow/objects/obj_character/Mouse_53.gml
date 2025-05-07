/// @description Show arrow charge and direction
if can_shoot{
	show_debug_message(arrow_speed);

	isAim = true
	sprite_index = spr_character_attack

	audio_play_sound(snd_bow_draw, 1, 0)

	//arrow_angle = point_direction(x,y, mouse_x, mouse_y)

	instance_create_layer(x,y,"Instances", obj_arrow_guide, 
	{
		direction: arrow_angle,
		image_angle: arrow_angle,
		image_xscale: arrow_speed,
	})

	mouse_pressed_in_room = true
}