/// @description Insert description here
// You can write your code in this editor

index = obj_runningMan.image_index;
callingX = obj_runningMan.x;
callingY = obj_runningMan.y;

if (charging)
{
	if (circleSize > 0)
	{
		draw_circle_color(leftEyeX, leftEyeY, circleSize, 0, c_red, true);
		draw_circle_color(rightEyeX, rightEyeY, circleSize, 0, c_red, true);
		circleSize--;
	}
	
	else
	{
		audio_sound_pitch(snd_laser, 1.5);
		audio_play_sound(snd_laser, 1, false);
		charging = false;
		create = true;
	}
}

if (create)
{
	var vecLen = point_distance(leftEyeX, leftEyeY, targetX, targetY);
	var nVecX = (targetX - leftEyeX) / vecLen, nVecY = (targetY - leftEyeY) / vecLen;

	var tX = leftEyeX, tY = leftEyeY;
	tX += nVecX * lenTraveled; tY += nVecY * lenTraveled;
	lenTraveled += 50;
	
	draw_line_width_color(leftEyeX, leftEyeY, tX, tY, (3 * obj_runningMan.size), c_red, c_red);
	draw_line_width_color(rightEyeX, rightEyeY, tX + (8 * obj_runningMan.size), tY, (3 * obj_runningMan.size), c_red, c_red);
	
	if (tY >= targetY)
	{
		instance_create_layer(0, 0, "Text", obj_fireWipe);
		explode = true;
		firing = true;
		create = false;
		lenTraveled = 0;
	}
}
else if (firing)
{
	if (targetX < room_width)
	{
		draw_line_width_color(leftEyeX, leftEyeY, targetX, targetY, (3 * obj_runningMan.size), c_red, c_red);
		draw_line_width_color(rightEyeX, rightEyeY, targetX + (8 * obj_runningMan.size), targetY, (3 * obj_runningMan.size), c_red, c_red);
		targetX += firespd;
		firespd += 0.1;
		//effect_create_below(ef_smoke, targetX, targetY, 1, c_orange);
	}
	else
	{
		firing = false;
		destroy = true;
		lastX = targetX;
		targetX = 0;
	}
}


if (!destroy)
{
	leftEyeX = eyeCoordinates[index, 0] + callingX; rightEyeX = leftEyeX + (8 * obj_runningMan.size);
	leftEyeY = eyeCoordinates[index, 1] + callingY; rightEyeY = leftEyeY;
}
else
{
	var vecLen = point_distance(leftEyeX, leftEyeY, lastX, targetY);
	var nVecX = (lastX - leftEyeX) / vecLen, nVecY = (targetY - leftEyeY) / vecLen;

	var tX = leftEyeX, tY = leftEyeY;
	tX += nVecX * lenTraveled; tY += nVecY * lenTraveled;
	lenTraveled += 75;
	
	draw_line_width_color(lastX, targetY, tX, tY, (3 * obj_runningMan.size), c_red, c_red);
	draw_line_width_color(lastX + (8 * obj_runningMan.size), targetY, tX + (8 * obj_runningMan.size), tY, (3 * obj_runningMan.size), c_red, c_red);
	
	if (tY >= targetY) instance_destroy();
}
