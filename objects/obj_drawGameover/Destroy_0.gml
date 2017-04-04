/// @description Create timer
// You can write your code in this editor

obj_engine.gameover = false;
obj_engine.timeElapsed = obj_engine.checkpoint;
obj_engine.gamespeed = obj_engine.lastGamespeed;

instance_create_layer(224, 416, "Instances", obj_player);
instance_create_layer(0, 0, "Text", obj_drawTimer);