/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_yellow); // Optional for Star Wars effect

var lines = string_split(text, "\n");

for (var i = 0; i < array_length(lines); i++) {
    y = scroll_y + i * line_spacing;
    if (y > -line_spacing && y < display_get_height()) {
        //draw_text(cx, y, lines[i]);
		draw_text_transformed(cx,y,lines[i],2,2,0)
    }
}