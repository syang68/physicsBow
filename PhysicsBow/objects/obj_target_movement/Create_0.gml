/// @description Insert description here
// You can write your code in this editor
hspeed = hspeed
vspeed = vspeed
sineWave = 0

image_blend = glow_color


if random_all{
	hspeed = random_range(-10,10)
	vspeed = random_range(-10,10)
}

collision_disabled = false
sprite_holder = sprite_index

fade_out = true