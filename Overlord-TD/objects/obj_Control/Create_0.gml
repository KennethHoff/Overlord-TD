newRoundCounter = 0;
newRoundTimer = 5 * room_speed;
counter = 0;

global.gamespeed = 1;
global.gamespeedMax = 20;
global.gamespeedMin = 0;

#region Spawn & Enemy Variables

global.level = 0;

spawn_amount = 5;
spawn_count = 0;
spawn_rate = 1 * room_speed;
spawnAmountMultiplier = 1.2;

global.totalEnemiesDead = 0;
global.roundEnemiesDead = 0;

global.enemiesPassedGate = 0;
global.totalEnemiesPassedGate = 0;

global.enemyCap = 500; // Hvis det er 500 enemies på skjermen, kan ingen flere spawne. // Burde aldri skje.
global.pathSpd = 100; // 100 er default.

global.hpMultiplier = 1;
global.spdMultiplier = 1;
global.coinGainMultipler = 1;
global.coinLossMultipler = 1;

#endregion

#region Inventory
global.coins = 100;
//global.lifeAmount = 20;
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

enum gameState { // Brukt av obj_Control
	newGame, // New game. Do not spawn enemies.
	newRound, // At the start of every round (intermediary state, no step events are ended here)
	spawning, // Enemies spawning
	waiting, // Out of enemies to spawn.
	gameOver
	
}

enum dragTowerStates { // Brukt av obj_TowerDrag
	placeable,
	unplaceable
}

enum towerTargettingStates { // Brukt av obj_TowerPlaced
	nearestEnemy,
	closestToBase,
	furthestFromBase,
	strongest, // Most health
	weakest // Lowest health
}

enum enemyPathStates {
	initial,
	main,
	final
}

#endregion

currentGameState = gameState.newGame;

show_debug_overlay(true);