/// @description Insert description here
// You can write your code in this editor

// Jump in foreground
if (scale < 2) scale += 0.05;
image_xscale = scale;
image_yscale = scale;

// Rotate
image_angle += rotate;

// Move speed
currentSpeed = MOVE_SPD * obj_engine.gamespeed;

if (hspd > (-currentSpeed)) hspd -= 0.1;
x+= hspd;
	
// Terminal Velocity
if (vspd < TERM_VEL) vspd += GRAV;

// Floor check
if (place_meeting(224, y + vspd, obj_collision))
{
	while (!place_meeting(224, y + sign(vspd), obj_collision))
	{
		y += sign(vspd);
	}
	vspd = sign(-vspd) * JUMP;
	JUMP *= 0.94
}
y += vspd;

if (timeElapsed > RAN_DELAY)
{
	instance_create_layer(x,y, "Enemies", obj_skullExplosion);
	instance_destroy();
}
timeElapsed++;
if (x < -sprite_width) instance_destroy();