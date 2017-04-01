/// @description Insert description here
// You can write your code in this editor

// Initialize variables
speedUp = false;
gameover = false;
blockHeight = room_height / 12;
gamespeed = 1;

timeElapsed = 0;
timeSeconds = 0;
timeMinutes = 0;
timeSinceGameOver = 0;
checkpoint = 0;

// Timer
instance_create_layer(0, 0, "Text", obj_drawTimer);

// Current level
level = scr_level01;

// Menu
menu = scr_menu;

// Audio
audio_play_sound(snd_level01, 0, true);