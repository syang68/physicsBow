/// @description Insert description here


var text_x = room_width / 2; //- string_width(text) / 2;
var text_y = room_height / 2 - string_height(text) * 7.5 ;

var r_new = random_range(0,255)
var g_new = random_range(0,255)
var b_new = random_range(0,255)

red = lerp(red, r_new, color_lerp_speed);
green = lerp(green, g_new, color_lerp_speed);
blue = lerp(blue, b_new, color_lerp_speed);

if randomly{
	color = make_color_rgb(red,green,blue)
}
//Needs smooth from previous color to new color

draw_set_color(color);
draw_set_font(fnt_title);
draw_text(text_x, text_y, text);

