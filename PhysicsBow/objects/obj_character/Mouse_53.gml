/// @description Show arrow charge and direction

show_debug_message(arrow_speed);

isAim = true
sprite_index = spr_character_attack


var angle = point_direction(x,y, mouse_x, mouse_y)

instance_create_layer(x,y,"Instances", obj_arrow_guide, 
{
	direction: angle,
	image_angle: angle,
	image_xscale: arrow_speed,
})

mouse_pressed_in_room = true