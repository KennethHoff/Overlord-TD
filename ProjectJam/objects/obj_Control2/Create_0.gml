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
counter = 0;

#region Inventory
global.coins = 100;
global.lifeAmount = 20;
global.enemiesRemaining = 0;
global.holdingTower = noone;
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