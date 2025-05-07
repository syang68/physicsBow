/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_character)){
	global.level_score[level_number] = max(global.level_score[level_number],ceil(obj_character.normal_arrow_amount / 3));
	show_debug_message("Level: " + string(level_number) + "Score: " + string(global.level_score[level_number]));
	
}
audio_stop_sound(snd_portal)