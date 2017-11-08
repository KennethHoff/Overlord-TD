if ( point_distance(x, y, xx, yy ) < 6 ) { // Når du nærmer deg neste path rute.
	pos++;
					//show_debug_message("Pos increased.");		
	if ( pos = path_get_number(path_ind) ) {
		rand = irandom_range(1,3);	
		
		if scr_CheckRoadBlock() { // Returnerer true om du kan gå videre. False om du ikke kan.
			//path = ("path_" + string(rand));
			//path_ind = asset_get_index(path)
			pos = 1;
			initialPath = false;
			path_start(path_ind, movespd, path_action_stop, true);
						show_debug_message("Initial Path finished. New started " + string(path_ind));
		}
	}
	else {
		xx = path_get_point_x(path_ind, pos);
		yy = path_get_point_y(path_ind, pos);
	}
}
image_angle = direction;