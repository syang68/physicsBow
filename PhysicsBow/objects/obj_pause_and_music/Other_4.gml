/// @description Insert description here
// You can write your code in this editor


global.paused = false;
paused_surf = -1;

if room != Map{
	global.current_room = room
}

button_1 = instance_create_layer(688, 293, "Buttons", obj_button_persistant,
								{
									image_xscale : 4,
									button_text : "RESTART",
									purpose : 2,
								})
								
button_2 = instance_create_layer(688, 357, "Buttons", obj_button_persistant,
								{
									image_xscale : 4,
									button_text : "MAIN MENU",
									purpose : 1,
								})
								
button_3 = instance_create_layer(688, 485, "Buttons", obj_button_persistant,
								{
									image_xscale : 4,
									button_text : "EXIT",
									purpose : 3,
								})
		
button_4 = instance_create_layer(688, 421, "Buttons", obj_button_persistant,
								{
									image_xscale : 4,
								})