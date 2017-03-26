view_xport[0] = obj_middle.x - (view_wport[0] / 2);
view_yport[0] = obj_middle.y - (view_wport[0] / 2);
view_xport[0] = clamp(view_xport[0], 0, room_width - view_wport[0]);
view_yport[0] = clamp(view_yport[0], 0, room_height - view_hport[0]);


view_xport[0] += random_range(-SHAKE, SHAKE);
view_yport[0] += random_range(-SHAKE, SHAKE);
SHAKE *= 0.9;