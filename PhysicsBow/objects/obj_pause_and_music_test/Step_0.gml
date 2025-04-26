/*
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
			instance_activate_layer("Buttons");
			sprite_index = spr_menu_border
			image_yscale = 1.75
		}
	}
}
*/