/// @description Insert description here
// You can write your code in this editor

image_alpha -= dissapate_rate

image_angle += rotate_speed

image_yscale -= shrink_rate
image_xscale -= shrink_rate

if(image_alpha <= 0 || image_xscale <= 0){
	instance_destroy()
}