
sineWave = 0 + (1 +sin(2*pi*current_time/1000 * 0.30)) * 0.8

//if (to_open && image_yscale >= 0.5){ image_yscale -= .05}


if (to_open){
	image_alpha -= .05
	
	if(image_alpha <= 0){instance_destroy()}
}


