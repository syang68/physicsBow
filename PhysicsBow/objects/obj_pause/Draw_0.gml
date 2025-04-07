if paused == true
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
        instance_deactivate_all(true);
		instance_activate_object(button_1);
		instance_activate_object(button_2);
		instance_activate_object(button_3);
		instance_activate_layer("Buttons");
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
	else
    {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, room_height / 3, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
	
	with(button_1){
		draw_self()

		draw_set_halign(fa_center);

		draw_set_valign(fa_middle);
		draw_set_color(c_white);

		draw_set_font(fnt)
		draw_text(x,y,button_text)
	}
	with(button_2){
		draw_self()

		draw_set_halign(fa_center);

		draw_set_valign(fa_middle);
		draw_set_color(c_white);

		draw_set_font(fnt)
		draw_text(x,y,button_text)
	}
	with(button_3){
	draw_self()

	draw_set_halign(fa_center);

	draw_set_valign(fa_middle);
	draw_set_color(c_white);

	draw_set_font(fnt)
	draw_text(x,y,button_text)
    }
	}
}