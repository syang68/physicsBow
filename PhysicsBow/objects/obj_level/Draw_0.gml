/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode(bm_add)

for(var c=0; c<360; c++){
	draw_sprite_ext(sprite_index,image_index, x+lengthdir_x(6,c), 
	y + lengthdir_y(6,c), image_xscale, image_yscale, image_angle, 
	c_blue, sineWave*0.1)
}

gpu_set_blendmode(bm_normal)

draw_sprite(to_draw,0,x,y);

draw_self();