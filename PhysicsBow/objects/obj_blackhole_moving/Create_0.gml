/// @description Insert description here
// You can write your code in this editor

image_alpha = opacity

image_xscale = xscale
image_yscale = yscale

gravity_list = ds_list_create();

if randomize1{
	image_xscale = random_range(.5,3.5)
	image_yscale = image_xscale
	rotating_speed = random_range(-5,5)
	hspeed = random_range(-3,3)
	vspeed = random_range(-3,3)
	proximity_radius = image_xscale * 100
	max_gravity = proximity_radius / 3
}


//show_debug_message(to_follow.object_index)

/*

if (!layer_exists("Effects")) {
    layer_create(depth - 1, "Effects");
}

gravitySys = part_system_create_layer("Effects", false); // No need for 3rd param
part_system_position(gravitySys, x, y);

*/
