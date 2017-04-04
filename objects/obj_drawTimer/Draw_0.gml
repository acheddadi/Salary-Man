/// @description Insert description here
// You can write your code in this editor

draw_set_halign(true);
draw_set_valign(true);
draw_set_font(fnt_timer);

script_execute(scr_draw_text_outline, room_width / 2, obj_engine.blockHeight, string(obj_engine.timer), c_black, size);