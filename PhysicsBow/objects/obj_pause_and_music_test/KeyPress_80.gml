/// @description Insert description here
// You can write your code in this editor
if room != Title && room != Map
{
	global.paused = !global.paused;
	if (!global.paused)
	{
		sprite_index = noone
		instance_activate_all()
		instance_deactivate_layer("Buttons");
		surface_free(paused_surf);
		paused_surf = -1;
	}
	else
	{
		instance_activate_layer("Buttons");
		sprite_index = spr_menu_border
		image_yscale = 1.75
	}
	
}