/// @description Insert description here
// You can write your code in this editor


hovering = false
clicked = false

image_alpha = 2

height = bbox_bottom - bbox_top

lower = y + 5
upper = y - 2

move_up = choose(true, false)

unlocked = global.level_unlocked[level_number]

if unlocked{
	sprite_index = spr_unlocked_map
	image_alpha = 0
}

timer = 0
sineWave = 0