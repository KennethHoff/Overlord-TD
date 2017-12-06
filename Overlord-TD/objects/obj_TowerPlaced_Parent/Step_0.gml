// Gjør om til State Machine!

if (obj_Control.currentGameState == gameState.gameOver) return; // Gjør ikke koden under, dersom "Game Over" er sant.
counter += 1 * global.gamespeed;
if (counter >= fire_rate) counter = fire_rate;

if scr_hover() {
	image_index = 1;
}
else image_index = 0;


switch currentTargettingState {
	case towerTargettingStates.nearestEnemy:
		enemyToShoot = scr_findNearestEnemy();
		towerTargetString = "Nearest to Tower"
		if scr_hover() 	if global.mmb_pressed currentTargettingState = towerTargettingStates.closestToBase;
		break;
		
	case towerTargettingStates.closestToBase:
		enemyToShoot = scr_findEnemyClosestToBase();
		towerTargetString = "Closest to Base"
		if scr_hover() if global.mmb_pressed currentTargettingState = towerTargettingStates.furthestFromBase;
		break;
		
	case towerTargettingStates.furthestFromBase:
		enemyToShoot = scr_findEnemyFurthestFromBase();
		towerTargetString = "Furthest from Base"
		if scr_hover() if global.mmb_pressed currentTargettingState = towerTargettingStates.strongest;
		break;
		
	case towerTargettingStates.strongest:
		enemyToShoot = scr_findStrongestEnemy();
		towerTargetString = "Strongest Enemy"
		if scr_hover() if global.mmb_pressed currentTargettingState = towerTargettingStates.weakest;
		break;
		
	case towerTargettingStates.weakest:
		enemyToShoot = scr_findWeakestEnemy();
		towerTargetString = "Weakest Enemy"
		if scr_hover() if global.mmb_pressed currentTargettingState = towerTargettingStates.nearestEnemy;
		break;
}

if enemyToShoot != noone {
	enemyInRange = true;
	if ( counter >= fire_rate ) {
		var overflow = fire_rate - counter;
		if (overflow >= 0) counter = overflow;
		else counter = 0;
		scr_createBullet(enemyToShoot);
	}
}
else {
	enemyInRange = false;
	enemyToShoot = noone;
}