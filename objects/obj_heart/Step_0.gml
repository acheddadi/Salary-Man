/// @description Insert description here
// You can write your code in this editor

if (hspd > (-MOVE_SPD)) hspd -= 0.05;
x+= hspd;
	
// Terminal Velocity
if (vspd < TERM_VEL) vspd += GRAV;

// Floor check
if (place_meeting(obj_player.x, y + vspd, obj_collision))
{
	while (!place_meeting(obj_player.x, y + sign(vspd), obj_collision))
	{
		y += sign(vspd);
	}
	vspd = sign(-vspd) * JUMP;
	JUMP *= 0.98
}
y += vspd;

if (x < -sprite_width) instance_destroy();