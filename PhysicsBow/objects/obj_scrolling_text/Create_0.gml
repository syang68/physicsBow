
if (show_credits){
	text = "Credits";
}
else{
	//text = "A long time ago in a galaxy far, far away...\n\nEPISODE IV\nA NEW HOPE\n\nIt is a period of civil war...";
	text = "It is a time of cosmic peril.\n A monstrous black hole has appeared at the edge of the solar system,\n its hunger threatening to consume Earth and all life with it.\n\n In the shadow of this celestial doom,\n a lone explorer seeks refuge in the wreckage\n of an alien vessel.\n\n Will they find salvation\n or will the dark maw consume everything?";
}

if start_bottom{
	scroll_y = room_height; //start below screen
	cx = room_width / 2;
}
else{
	scroll_y = y
	cx = x
}