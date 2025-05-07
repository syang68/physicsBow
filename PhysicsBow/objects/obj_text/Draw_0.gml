/// @description Insert description here
// You can write your code in this editor



draw_set_color(outline_color);
draw_text(x - offset, y - offset, text);
draw_text(x + offset, y - offset, text);
draw_text(x - offset, y + offset, text);
draw_text(x + offset, y + offset, text);
draw_text(x, y - offset, text);
draw_text(x, y + offset, text);
draw_text(x - offset, y,     text);
draw_text(x + offset, y,     text);

draw_set_color(c_lime)
draw_set_font(font)
draw_text_transformed(x,y,text,font_scale,font_scale,0)
