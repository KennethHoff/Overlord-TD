spawn_amount = 5;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;
global.level = 1;

global.hpMultiplier = 1;
global.spdMultiplier = 1;


global.coins = 100;
global.lifeAmount = 20;
global.enemyAmount = 0;
global.gameOver = false;
global.holdingTower = noone;

global.errorCol = c_red;
global.placeableCol = c_white;

global.roadBlockRemoveCost = 0;
global.roadBlockRemoveCostIncrease = 250;



global.enemyCap = 500; // Hvis det er 500 enemies på skjermen, kan ingen flere spawne.
global.pathSpd = 100; // 100 er default.

global.spawnX = 480;
global.spawnY = 64;

global.paths = ds_list_create();
with (obj_RoadBlock) {
	ds_list_add(global.paths, id);
}

global.openPaths = ds_list_create();

show_debug_overlay(true);


show_debug_message("Finished Create on Control Object.");

alarm[11] = 1; // Very much a band-aid fix.
