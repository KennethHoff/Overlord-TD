global.enemyCap = 500; // Hvis det er 500 enemies på skjermen, kan ingen flere spawne.
global.pathSpd = 100; // 100 er default.
global.second = delta_time * 1/1000000

global.spawnX = 480;
global.spawnY = 64;

global.paths = ds_list_create();
with (obj_RoadBlock) {
	ds_list_add(global.paths, id);
}


global.openPaths = ds_list_create();

show_debug_overlay(true);


show_debug_message("Finished Create on Control Object.");

alarm[0] = 1; // Very much a band-aid fix.