/// @description Insert description here
// You can write your code in this edito
if (timeElapsed == 30)
{
	if (draw) draw = false;
	else
	{
		draw = true;
		drawCount++;
		if (drawCount <= MAX_DRAW) audio_play_sound(snd_alert, 1, false);
	}
	timeElapsed = 0;
}
timeElapsed++;

if (drawCount > MAX_DRAW) instance_destroy();
