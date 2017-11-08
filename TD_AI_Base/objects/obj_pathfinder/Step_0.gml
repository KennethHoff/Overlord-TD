if ( point_distance(x, y, xx, yy ) < 6 ) {
	pos++;
					show_debug_message("Pos increased.");
	if ( pos = path_get_number(global.path) ) {
		instance_destroy();	
	}
	else {
		xx = path_get_point_x(global.path, pos);
		yy = path_get_point_y(global.path, pos);
	}
	//alarm[0] = room_speed * 1;
}
mp_potential_step(xx, yy, 3, false);
image_angle = direction;

show_debug_message("Walking as expected: " + string(pos));