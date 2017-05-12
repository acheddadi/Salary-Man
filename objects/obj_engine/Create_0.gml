/// @description Insert description here
// You can write your code in this editor

// Initialize variables
speedUp = false;
gameover = false;
blockHeight = room_height / 12;
gamespeed = 2;
lastGamespeed = 1;

MAX_DEATH = 10;
SHAKE = 0;

timeElapsed = 3535;
timeSeconds = 0;
timeMinutes = 0;
timeSinceGameOver = 0;
checkpoint = 0;
deathCount = 0;

// Timer
instance_create_layer(0, 0, "Text", obj_drawTimer);

// Current level
level = scr_level01;

// Menu
menu = scr_menu;

// Audio
currentSong = snd_level01;
audio_play_sound(currentSong, 0, true);

// Screen shake
shake = scr_shake;