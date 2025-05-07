/// @description Insert description here
// You can write your code in this editor

x = room_width / 2
y = room_height / 2

switch arrow_type{
	case 0:
		sprite_index = spr_arrow_menu
		break;
	case 1:
		sprite_index = spr_gravity_arrow_menu
		break;
	case 2:
		sprite_index = spr_portal_arrow_menu
		break;
}

first_click = false

if (instance_exists(obj_character)){
	obj_character.can_shoot = false
	obj_character.mouse_pressed_in_room = false
}