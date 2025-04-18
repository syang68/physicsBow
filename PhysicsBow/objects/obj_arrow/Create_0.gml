/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

inMotion = true;

teleport_cooldown = 0;
x_teleport_offset = 0;
y_teleport_offset = 0;

collision_y_offset = 0
collision_x_offset = 0

// Changes arrow sprite based on which arrow type, 0 for normal, 
// 1 for gravity and 2 for portal arrow
switch(arrow_type){
	case 0:
		sprite_index = spr_arrow;
		break;
		
	case 1:
		sprite_index = spr_arrow_gravity;
		break;
	
	case 2:
		sprite_index = spr_arrow_portal_1;
		break;
	
	case 3:
		sprite_index = spr_arrow_portal_2;
		break;
}
