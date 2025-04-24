/// @description Insert description here
// You can write your code in this editor

/*
if move_up{
	y -= .05
}
else{
	y += .05
}

if y < upper{
	move_up = false
}

if y > lower{
	move_up = true
}
*/

if move_up{y = y + sin(timer*frequency)*amplitude}
else{y = y - sin(timer*frequency)*amplitude}
timer++;

sineWave = 0 + (1 +sin(2*pi*current_time/1000 * 0.30)) * 0.8 // 0-0.8