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
level_score = global.level_score[level_number]

//current_sprite = sprite_index
to_draw = spr_0_star;

if unlocked{
	sprite_index = spr_unlocked_map
	switch level_score{
		case 0:
			to_draw = spr_0_star;
			//current_sprite = sprite_index;
			break;
		case 1:
			to_draw = spr_1_star;
			//current_sprite = sprite_index;
			break;
		case 2:
			to_draw = spr_2_star;
			//current_sprite = sprite_index;
			break;
		case 3:
			to_draw = spr_3_star;
			//current_sprite = sprite_index;
			break;
	}
}

timer = 0
sineWave = 0