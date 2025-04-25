/// @description 

if global.paused{
	switch (purpose)
	{
		case 0:
			room_goto(room_to)
			audio_stop_sound(snd_portal)
			global.paused = false
		break;
		case 1: 
			audio_stop_sound(snd_portal)
			game_restart()
			//global.paused = false
		break;
		case 2:
			audio_stop_sound(snd_portal)
			
			with(obj_pause_and_music){
				obj_pause_and_music.paused_surf = -1
			}
			
			room_restart();
			global.paused = false
		break;
		case 3:
			game_end();
		break;
	}
}