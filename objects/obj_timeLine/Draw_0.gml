/// @description Insert description here
// You can write your code in this editor

draw_set_halign(true);
draw_set_valign(true);
draw_set_font(fnt_timer);
if (!gameover) script_execute(scr_draw_text_outline, room_width / 2, blockHeight, string(timer), c_black);
else
{
	script_execute(scr_draw_text_outline, room_width / 2, room_height / 2, "Game Over", c_black);
	timeSinceGameOver++;
}

if (timeSinceGameOver > 300) game_restart();