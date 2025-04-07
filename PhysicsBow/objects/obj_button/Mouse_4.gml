/// @description 
switch (purpose)
{
	case 0:
		room_goto(room_to)
	break;
	case 1: 
		game_restart()
	break;
	case 2:
		room_restart();
	break;
	case 3:
		game_end();
	break;
}