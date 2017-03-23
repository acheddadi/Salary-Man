/// @description Insert description here
// You can write your code in this editor

// Accelerate forward
if (hspd < MOVE_SPD) hspd += 0.2;

// Flip direction
if (vspd == FLY_SPD) dir = false;
else if (vspd == (-FLY_SPD)) dir = true;

// Accelerate up and down
if ((vspd < FLY_SPD) && dir) vspd += 0.2;
else if ((vspd > (-FLY_SPD)) && !dir) vspd -= 0.2; 

x -= hspd;
// Floor check
if (place_meeting(x, y + vspd, obj_collision))
{
	while (!place_meeting(x, y + sign(vspd), obj_collision))
	{
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;

if (x < (-sprite_width)) instance_destroy();