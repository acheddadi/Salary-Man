/// @description Insert description here
// You can write your cif (draw)
if (draw)
{
	switch (spriteIndex)
	{
		case "up":
		{
			draw_sprite(spr_incoming, 0, room_width / 2, (room_height / 2) - 170);
			break;
		}
		case "down":
		{
			draw_sprite(spr_incoming, 0, room_width / 2, (room_height / 2) + 170);
			break;
		}
	}
}