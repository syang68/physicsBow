/// @description Insert description here
// You can write your code in this editor
sineWave = 0 + (1 +sin(2*pi*current_time/1000 * 0.30)) * 0.8

//sineWave = (sin(current_time * 0.002) + 1) * 0.5;

//image_blend = merge_color(c_white, c_silver, sineWave)

if (to_follow != noone){
	//vspeed = to_follow.vspeed
	//hspeed = to_follow.hspeed
	x = to_follow.x + stick_offset_x
	y = to_follow.y + stick_offset_y
}