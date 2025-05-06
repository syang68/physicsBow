/// @description Insert description here
// You can write your code in this editor

scroll_y -= scroll_speed

var total_lines = array_length(string_split(text, "\n"));
var last_line_y = scroll_y + total_lines * line_spacing;

if (last_line_y < 0) {
    room_goto(room_to); // Go to the next room
}