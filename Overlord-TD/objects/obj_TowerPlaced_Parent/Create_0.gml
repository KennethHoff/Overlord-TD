towerCost = ds_map_find_value(global.towers, towerInd);

counter = fire_rate;
hovering = false;
enemiesKilled = 0;
damageDone = 0;
towerLevel = 1;
upgradeCost = towerCost * 2;
refundValue = towerCost / 2;
bulletDropOffDistance = maxRange;

enemyInRange = false;

currentTargettingState = towerTargettingStates.closestToBase;
//currentTargettingState = towerTargettingStates.furthestFromBase;
//currentTargettingState = towerTargettingStates.nearestEnemy;
//currentTargettingState = towerTargettingStates.strongest;
//currentTargettingState = towerTargettingStates.weakest;

towerTargetString = "Closest"