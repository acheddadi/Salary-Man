/// @description Insert description here
// You can write your code in this editor
// Tick, tock
timeElapsed++;
timeSeconds = timeElapsed / 60;
timeMinutes = timeSeconds / 60;

timer = floor(timeSeconds);

// Main timeline
if (instance_exists(obj_player)) script_execute(level);

// Menu
script_execute(menu);

// Check if player still alive
if (!instance_exists(obj_player)) gameover = true;

// Speed Up event
scr_speedUp();