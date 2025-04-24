/// @description Insert description here
// You can write your code in this editor
sineWave = 0 + (1 +sin(2*pi*current_time/1000 * 0.30)) * 0.8


if (hit){
	image_alpha -= .05
	
	if(image_alpha <= 0){instance_destroy()}
}