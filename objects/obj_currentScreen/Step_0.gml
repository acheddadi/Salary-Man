/// @description Insert description here
// You can write your code in this editor

// Pan camera
if (goToX > x)
{
	if ((x + transitionSpeed) < goToX) x += transitionSpeed;
	else while (goToX > x) x++;
}
else if (goToX < x)
{
	if ((x + transitionSpeed) > goToX) x -= transitionSpeed;
	else while (goToX < x) x--;
}

if (goToY > y)
{
	if ((y + transitionSpeed) < goToY) y += transitionSpeed;
	else while (goToY > y) y++;
}
else if (goToX < y)
{
	if ((y + transitionSpeed) > goToY) y -= transitionSpeed;
	else while (goToX < y) y--;
}