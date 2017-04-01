/// draw_text_outline(x, y, text, *outline_color, *yscale);

var x1 = argument[0],
  y1 = argument[1],
  text = argument[2];
  c1 = c_black;
  yScale = 1;

var c2 = draw_get_colour();

if (argument_count >= 4)
{
	c1 = argument[3];
	yScale = argument[4];
}

draw_set_color(c1);

draw_text_transformed(x1 - 3, y1 - 3, text, 1, yScale, 0);
draw_text_transformed(x1, y1 - 3, text, 1, yScale, 0);
draw_text_transformed(x1 + 3, y1 - 3, text, 1, yScale, 0);
draw_text_transformed(x1 - 3, y1, text, 1, yScale, 0);
draw_text_transformed(x1 + 3, y1, text, 1, yScale, 0);
draw_text_transformed(x1 - 3, y1 + 3, text, 1, yScale, 0);
draw_text_transformed(x1, y1 + 3, text, 1, yScale, 0);
draw_text_transformed(x1 + 3, y1 + 3, text, 1, yScale, 0);

draw_set_color(c2);

draw_text_transformed(x1, y1, text, 1, yScale, 0);