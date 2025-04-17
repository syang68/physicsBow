/// @description Insert description here
// You can write your code in this editor

// First, draw the sprite normally
draw_self();

// Optional: Set the font and color
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw near the character (adjust offset as needed)
draw_text(x + 16, y - 32, arrow_angle);
draw_text(x + 16, y - 16, arrow_speed);