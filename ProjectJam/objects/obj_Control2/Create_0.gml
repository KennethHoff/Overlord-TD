counter = 0;
global.gamespeed = 1;
#region Spawn & Enemy Variables
global.level = 0;

global.spawn_amount = 5;
global.spawn_count = 0;
global.enemiesDead = 0;
global.roundEnemiesDead = 0;
global.spawn_rate = 1 * room_speed;
global.spawnAmountMultiplier = 1.5;

global.enemyCap = 500; // Hvis det er 500 enemies på skjermen, kan ingen flere spawne. // Burde aldri skje.
global.pathSpd = 100; // 100 er default.

global.hpMultiplier = 1;
global.spdMultiplier = 1;

#endregion

#region Inventory
global.coins = 100;
global.lifeAmount = 20;
global.enemiesRemaining = 0;
global.holdingTower = noone;
#endregion

#region Tower variables

enum towerStates { // Currently not in use
	idle,
	enemyInSight
}


enum Towers {
	tower_1 = 1,
	tower_2 = 2,
	tower_3 = 3
}


global.towers = ds_map_create();

scr_addNewTower(Towers.tower_1, 50);
scr_addNewTower(Towers.tower_2, 100);
scr_addNewTower(Towers.tower_3, 200);

ini_open("Save.ini");
var t_string = ds_map_write(global.towers);
ini_write_string("Debug", "Towers Map", t_string);
ini_close();


#endregion
global.gameOver = false;

global.errorCol = c_red;
global.placeableCol = c_white;

global.roadBlockRemoveCost = 0;
global.roadBlockRemoveCostIncrease = 250;




// Hvor på skjermen enemies spawner (varierer basert på map. #Temporary)
global.spawnX = 480; 
global.spawnY = 64;

global.paths = ds_list_create();
with (obj_RoadBlock) {
	ds_list_add(global.paths, id);
}

global.openPaths = ds_list_create();

scr_createList();


#region States

enum roundStates { // Brukt av obj_Control
	newGame, // New game. Do not spawn enemies.
	newRound,
	spawning, // Enemies spawning
	waiting // Out of enemies to spawn.
	
}

enum dragTowerStates { // Brukt av obj_TowerDrag
	placeable,
	unplaceable
}

enum clickTowerStates { // Brukt av obj_TowerClickable
	
}

enum placedTowerStates { // Brukt av obj_TowerPlaced
	
}


#endregion

global.currentRoundState = roundStates.newGame;

show_debug_overlay(true);