/// @description Insert description here
// You can write your code in this editor

// Draw black transition
draw_set_color(c_black);
draw_set_alpha(opacity);
draw_rectangle(0, 0, room_width, room_height, 0);

// Reset color and alpha settings
draw_set_color(c_white);
draw_set_alpha(1);