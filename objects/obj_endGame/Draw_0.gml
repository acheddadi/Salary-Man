/// @description Insert description here
// You can write your code in this editor

// Draw black transition
draw_set_color(c_black);
draw_set_alpha(opacity);
draw_rectangle(0, 0, room_width, room_height, 0);

// Reset color and alpha settings
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(true);
draw_set_valign(true);
draw_set_font(fnt_timer);
draw_text_transformed(room_width / 2, room_height / 2, text1, 1, size1, 0);
draw_set_font(fnt_menu)
draw_text_transformed(room_width / 2, room_height / 1.5, text2, 1, size2, 0);