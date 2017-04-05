/// @description Insert description here
// You can write your code in this editor

index = obj_runningMan.image_index;
callingX = obj_runningMan.x;
callingY = obj_runningMan.y;

switch (target)
{
	case "up":
	targetY = 128;
	break;
	
	case "down":
	targetY = room_height - 128;
	break;
	
	default:
	instance_destroy();
	break;
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
	
	if (target == "down")
	{
		if (tY >= targetY)
		{
			firing = true;
			create = false;
			lenTraveled = 0;
		}
	}
	if (target == "up")
	{
		if (tY <= targetY)
		{
			firing = true;
			create = false;
			lenTraveled = 0;
		}
	}

}
else if (firing)
{
	if (targetX < room_width)
	{
		draw_line_width_color(leftEyeX, leftEyeY, targetX, targetY, (3 * obj_runningMan.size), c_red, c_red);
		draw_line_width_color(rightEyeX, rightEyeY, targetX + (8 * obj_runningMan.size), targetY, (3 * obj_runningMan.size), c_red, c_red);
		targetX += firespd;
		firespd += 10;
		effect_create_below(ef_smoke, targetX, targetY, 1, c_gray);
	}
	else
	{
		firing = false;
		destroy = true;
		explode = true;
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
	
	if (target == "down")
	{
		if (tY >= targetY) destroy = false;
	}
	if (target == "up")
	{
		if (tY <= targetY) destroy = false;
	}
}
