
if (instance_exists(obj_character)){
	x = obj_character.x// - obj_character.image_xscale * 9
	y = obj_character.y - 5 //- 2
	direction = point_direction(x,y, mouse_x, mouse_y)
	image_angle = direction
}

if(image_index == 6){image_speed = 0}