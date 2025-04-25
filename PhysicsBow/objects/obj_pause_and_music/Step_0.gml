if room != Title && room != Map
{
	if keyboard_check_pressed(ord("P"))
	{
		global.paused = !global.paused;
		if global.paused = false
		{
			sprite_index = noone
			instance_activate_all()
			instance_deactivate_layer("Buttons");
			surface_free(paused_surf);
			paused_surf = -1;
		}
		
		if global.paused = true
		{
			/*
			instance_create_layer(room_width / 2, room_height / 2, "Instances",obj_button, 
			{button_text : "Restart", purpose : 2});
			instance_create_layer(room_width / 2, room_height / 2, "Instances",obj_button, 
			{button_text : "Title", purpose : 1, button_y_pos : 1});
			instance_create_layer(room_width / 2, room_height / 2, "Instances",obj_button, 
			{button_text : "Exit", purpose : 3,  button_y_pos : 2});
			*/
			instance_activate_layer("Buttons");
			sprite_index = spr_menu_border
			image_yscale = 1.75
		}
	}
}