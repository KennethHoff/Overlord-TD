global.enemyCap = 500;

global.spawnX = 480;
global.spawnY = 64;

scr_SpawnEnemy();


global.paths = ds_list_create();
with (obj_RoadBlock) {
	ds_list_add(global.paths, id);
}


global.openPaths = ds_list_create();

show_debug_overlay(true);

alarm[0] = room_speed * 0.1;