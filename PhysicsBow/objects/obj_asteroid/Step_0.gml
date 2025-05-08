/// @description Insert description here
// You can write your code in this editor
image_angle += rotation_speed
move_wrap(true, true, 0);

hspeed = clamp(hspeed, -5,5)
vspeed = clamp(vspeed, -5, 5)
rotation_speed = clamp(rotation_speed, -10,10)
