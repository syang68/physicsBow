/// @description Insert description here

image_yscale = 2
image_xscale = 1.25

sineWave = 0

audio_play_sound_at(snd_portal, x, y, 0, 1, 15, 50, 1, 1)


/*
if (!layer_exists("Effects")) {
    layer_create(depth - 1, "Effects");
}

// Create a particle system instance from the asset
electricitySys = part_system_create_layer("Effects", false, ps_green_electricity);

// Move it to your desired position
part_system_position(electricitySys, x, y);
*/

if (to_follow != noone){
	stick_offset_x = x - to_follow.x
	stick_offset_y = y - to_follow.y
}