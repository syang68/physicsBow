
if(room != Title && room != Map){
	
	//draw_set_colour($FFBFFBFF)
	//draw_rectangle(50, 5, 150, 95, false)
	draw_set_valign(fa_top)
	
	if show_inventory{
		draw_set_alpha(.5)
		draw_set_color(c_orange)
		draw_rectangle(50, 15, 115, 130, false)
	}
	
	if(instance_exists(obj_character)){
		/*
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
		*/
		draw_set_alpha(1)
		if show_inventory{
		draw_sprite_ext(spr_arrow, 0, 58, 35, 2, 2, 45, c_white, 1)
		draw_sprite_ext(spr_arrow_gravity, 0, 58, 65, 2, 2, 45, c_white, 1)
		draw_sprite_ext(spr_arrow_portal_1, 0, 58, 95, 2, 2, 45, c_white, 1)
		draw_sprite_ext(spr_arrow_portal_2, 0, 58, 125, 2, 2, 45, c_white, 1)
		}
		
		/*
		if (room == Room1 || room == Room2 || room == Room3){
			draw_set_colour(c_black)
		}
		else{draw_set_colour(c_white)}
		*/
		
		
		function outline(xx,yy, offset, text){
		draw_set_color(c_black);
		draw_text(xx - offset, yy - offset, text);
		draw_text(xx + offset, yy - offset, text);
		draw_text(xx - offset, yy + offset, text);
		draw_text(xx + offset, yy + offset, text);
		draw_text(xx, yy - offset, text);
		draw_text(xx, yy + offset, text);
		draw_text(xx - offset, yy,     text);
		draw_text(xx + offset, yy,     text);
		}
		
		outline(55,135,1,"Angle: " + string(obj_character.previous_angle))
		outline(55,155,1, "Power: " + string(obj_character.previous_power))
		
		draw_set_colour(c_white)
		draw_set_halign(fa_left)
		draw_set_font(fnt_normal);
		draw_text(55, 135, "Angle: " + string(obj_character.previous_angle))
		draw_text(55, 155, "Power: " + string(obj_character.previous_power))
		
		

		
		if show_inventory{
		draw_text(75, 20, " x " + string(obj_character.normal_arrow_amount))
		draw_text(75, 50, " x " + string(obj_character.gravity_arrow_amount))
		draw_text(75, 80, " x " + string(obj_character.portal_arrow_1_amount))
		draw_text(75, 110, " x " + string(obj_character.portal_arrow_2_amount))
		}
	}
}