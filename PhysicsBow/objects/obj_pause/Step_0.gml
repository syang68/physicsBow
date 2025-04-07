if room != Title
{
	if keyboard_check_pressed(ord("P"))
	{
		paused = !paused;
		if paused = false
		{
			instance_activate_all()
			instance_deactivate_layer("Buttons");
			surface_free(paused_surf);
			paused_surf = -1;
		}
		
		if paused = true
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
		}
	}
}