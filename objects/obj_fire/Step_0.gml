/// @description Insert description here
// You can write your code in this editor

hspd = MOVE_SPD * obj_engine.gamespeed;

x -= hspd;
if (x < -sprite_width) instance_destroy();


// Update particle
part_emitter_region(partsys_fire, my_emitter, x - (sprite_width / 3), x, y, y, ps_shape_ellipse, ps_distr_gaussian);
//start the particle streams
part_emitter_burst(partsys_fire, my_emitter, part_fire, 5);
part_emitter_burst(partsys_fire, my_emitter, part_cinder, -5);