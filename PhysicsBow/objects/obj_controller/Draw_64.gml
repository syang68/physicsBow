
if(room != Title && room != Map){
	draw_set_colour($FFBFFBFF)
	draw_rectangle(50, 5, 150, 95, false)
	
	if(instance_exists(obj_character)){

		for (var i = 0; i < obj_character.gravity_arrow_amount; i++)
		{
			draw_sprite_ext(spr_arrow_gravity, 0, (58 + 18 * i), 25, 2, 2, 45, c_white, 1)
		}
		for (var i = 0; i < obj_character.portal_arrow_1_amount; i++)
		{
			draw_sprite_ext(spr_arrow_portal_1, 0, (58 + 18 * i), 55, 2, 2, 45, c_white, 1)
		}
		for (var i = 0; i < obj_character.portal_arrow_2_amount; i++)
		{
			draw_sprite_ext(spr_arrow_portal_2, 0, (58 + 18 * i), 85, 2, 2, 45, c_white, 1)
		}
		
		draw_set_colour(c_black)
		draw_set_halign(fa_left)
		draw_text(55, 105, "Angle: " + string(obj_character.previous_angle))
		draw_text(55, 125, "Power: " + string(obj_character.previous_power))
	
	}
}