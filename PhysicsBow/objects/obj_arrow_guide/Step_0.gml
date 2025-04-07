/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_character)){
	x = obj_character.x
	y = obj_character.y
	direction = point_direction(x,y, mouse_x, mouse_y)
	image_angle = direction
	image_xscale = obj_character.arrow_speed
}