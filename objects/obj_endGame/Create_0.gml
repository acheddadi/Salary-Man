/// @description Insert description here
// You can write your code in this editor

obj_drawTimer.endGame = true;
opacity = 0;
audio_sound_gain(obj_engine.currentSong, 0, 6000);
size1 = 0;
size2 = 0;
deathCount = "";
if (obj_engine.totalDeathCount == 0) deathCount = "no";
else deathCount = string(obj_engine.totalDeathCount);
text1 = "Game Over";
text2 = "You won with " + deathCount + " deaths\nThanks for playing my game!\n\nPress ESC to quit";