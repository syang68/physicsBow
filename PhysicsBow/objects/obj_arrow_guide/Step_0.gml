/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_arms)){
	x = obj_arms.x
	y = obj_arms.y
	direction = point_direction(x,y, mouse_x, mouse_y)
	image_angle = direction
	image_xscale = obj_character.arrow_speed * -1
}