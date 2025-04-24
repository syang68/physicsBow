/// @description Insert description here
// You can write your code in this editor

var angle_offset = abs(image_angle);

// Define the max speed and min speed
var max_speed = .25;   // fastest at edge
var min_speed = 0.1; // slowest near zero

// Interpolate rotate speed based on distance from zero
// When angle_offset is large, speed is closer to max_speed
// When angle_offset is near zero, speed is closer to min_speed
var rotate_speed = lerp(min_speed, max_speed, angle_offset / angle_bounds);


if rotate_counterclock{
	image_angle += rotate_speed
}
else{
	image_angle -= rotate_speed
}

if image_angle > angle_bounds{
	rotate_counterclock = false
}

if image_angle < (angle_bounds * -1){
	rotate_counterclock = true
}


layer_vspeed("Background", image_angle* .5)
