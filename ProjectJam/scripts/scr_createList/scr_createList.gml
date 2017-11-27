if (ds_list_size(global.openPaths) != 0) {
	ds_list_destroy(global.openPaths);
}
global.openPaths = ds_list_create();


with (obj_RoadBlock) {
	if !blocking ds_list_add(global.openPaths, blockedPath);
}

global.openPathsListSize = ds_list_size(global.openPaths);

show_debug_message("List Created. Size of: " + string(global.openPathsListSize));
