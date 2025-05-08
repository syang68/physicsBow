/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

angle = 0

inMotion = true;

teleport_cooldown = 0;
x_teleport_offset = 0;
y_teleport_offset = 0;

collision_y_offset = 0
collision_x_offset = 0

stick_offset_x = 0;
stick_offset_y = 0;

arrow_trail_counter = 0;

saved_gravity = gravity

// Changes arrow sprite based on which arrow type, 0 for normal, 
// 1 for gravity and 2 for portal arrow
switch(arrow_type){
	case 0:
		sprite_index = spr_arrow;
		//sprite_index = spr_menu_arrow;
		audio_play_sound(snd_release_arrow, 0, 0, 5 * speed/3)
		break;
		
	case 1:
		sprite_index = spr_arrow_gravity;
		//sprite_index = spr_menu_arrow_gravity;
		audio_play_sound(snd_release_arrow_gravity, 0, 0, 1 * speed/3)
		break;
	
	case 2:
		sprite_index = spr_arrow_portal_1;
		//sprite_index = spr_menu_arrow_portal_1;
		audio_play_sound(snd_release_arrow_portal, 0, 0, 1 * speed/3)
		break;
	
	case 3:
		sprite_index = spr_arrow_portal_2;
		//sprite_index = spr_menu_arrow_portal_2;
		audio_play_sound(snd_release_arrow_portal, 0, 0, 1 * speed/3, 0, 2)
		break;
}


