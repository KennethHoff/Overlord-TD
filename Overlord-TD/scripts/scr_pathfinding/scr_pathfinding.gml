if !initialPath {
	return "final";
}
if ( point_distance(x, y, xx, yy ) < 6 ) { // Når du nærmer deg neste path rute.
	pos++;
	if ( pos = path_get_number(path_ind) ) { // Når den kommer fram til slutten av en path.

		if global.openPathsListSize > 0 { // Hvis det er noen åpne paths.
			
			rand = irandom_range(0,global.openPathsListSize-1);
										
			pathFromList = ds_list_find_value(global.openPaths, rand);
										
			path = ("path_" + string(pathFromList));
			path_ind = asset_get_index(path)
			pos = 1;
			initialPath = false;
			path_start(path_ind, moveSpd, path_action_stop, true);
			return "initial";
		}
		else { // Hvis det ikke er noen åpne paths.
			return "none";
		}
	}
	else {
		xx = path_get_point_x(path_ind, pos);
		yy = path_get_point_y(path_ind, pos);
	}
}
image_angle = direction;