if (!initialPath) {
	instance_destroy();
	scr_SpawnEnemy();
				show_debug_message("destroyed instance.");
	return;
}

if global.openPathsListSize > 0 {
	rand = irandom_range(0,global.openPathsListSize-1);
			
					show_debug_message("Open Paths:" + string(global.openPaths));
			
					show_debug_message("List Size: " + string(global.openPathsListSize));
							
					show_debug_message("Rand: " + string(rand));
							
	pathFromList = ds_list_find_value(global.openPaths, rand);
			
					show_debug_message("Path from list: " + string(pathFromList));
							
	path = ("path_" + string(pathFromList));
	path_ind = asset_get_index(path)
	pos = 1;
	initialPath = false;
	path_start(path_ind, movespd, path_action_stop, true);
					show_debug_message("Initial Path finished. New started " + string(path_ind));
}
image_angle = direction;