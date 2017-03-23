/// @description Insert description here
// You can write your code in this editor
// Tick, tock
timeElapsed++;
timeSeconds = timeElapsed / 60;
timeMinutes = timeSeconds / 60;

timer = floor(timeSeconds);

// Main timeline
script_execute(level);