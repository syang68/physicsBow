/// @description Insert description here
// You can write your code in this editor

if not hit{
	gpu_set_blendmode(bm_add)

	for(var c=0; c<360; c++){
		draw_sprite_ext(sprite_index,image_index, x+lengthdir_x(glow_offset,c), 
		y + lengthdir_y(glow_offset,c), image_xscale, image_yscale, image_angle, 
		glow_color, sineWave*0.1)
	}

	gpu_set_blendmode(bm_normal)
}
draw_self();