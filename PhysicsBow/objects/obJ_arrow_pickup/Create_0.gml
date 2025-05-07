/// @description Insert description here
// You can write your code in this editor

sineWave = 0
timer = 0

depth = -5

switch arrow_type{
	case 0:
		sprite_index = spr_menu_arrow
		break;
	case 1:
		sprite_index = spr_menu_arrow_gravity
		break;
	case 2:
		sprite_index = spr_menu_arrow_portal_1
		break;
	case 3:
		sprite_index = spr_menu_arrow_portal_2
		break;
}

//picked_up = false