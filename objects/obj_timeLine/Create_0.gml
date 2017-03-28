/// @description Insert description here
// You can write your code in this editor
gameover = false;
timeSinceGameOver = 0;
blockHeight = room_height / 12;

timeElapsed = 0;
timeSeconds = 0;
timeMinutes = 0;

// Current level
level = scr_level01;

// Menu
menu = scr_menu;

// Audio
audio_play_sound(snd_level01, 0, true);