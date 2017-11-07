if (pos > 4) {
	pos -= 4;
}
else {
pos = 1;
}

xx = path_get_point_x(global.path, pos);
yy = path_get_point_y(global.path, pos);

		show_debug_message("Pathfinder is lost. Send help.");