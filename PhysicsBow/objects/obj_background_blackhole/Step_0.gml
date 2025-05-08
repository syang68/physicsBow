/// @description Insert description here
// You can write your code in this editor

if gameEnd{
	image_alpha -= .005
	show_debug_message("Blackhole Dissapate")
}

if (image_alpha <= 0) && gameEnd{
	instance_destroy()
}