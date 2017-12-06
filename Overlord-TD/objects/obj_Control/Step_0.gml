switch (currentGameState) {
	case gameState.newGame:
		scr_getInput();
		scr_towerDragging();
		scr_countEnemies();
		scr_clickTower();
		scr_towerClickedHotkeys();
		
		if (global.openPathsListSize > 0) currentGameState = gameState.newRound;
		break;
		
	case gameState.newRound: // Burde gå rett fra "new round" -> "spawning", så trenger ikke input etc..
		scr_newRound(global.enemiesRemaining);
		currentGameState = gameState.spawning
		break;
		
	case gameState.spawning: // Spawning enemies.
		scr_getInput();
		scr_towerDragging();
		scr_countEnemies();
		scr_clickTower();
		scr_towerClickedHotkeys();
		
		scr_checkGameOver();
		
		scr_spawnEnemies();
		
		if (spawn_count >= spawn_amount) {
			currentGameState = gameState.waiting;
		}
		
		break;
		
	case gameState.waiting: // All enemies have spawned. Waiting for them to die.
		scr_getInput();
		scr_towerDragging();
		scr_countEnemies();
		scr_clickTower();
		scr_towerClickedHotkeys();
		
		scr_checkGameOver();
		
		counter = 0;
		newRoundCounter += global.gamespeed;
		
		#region waiting for all enemies to be dead. // Ny runde på en annen måte
		
		//if (global.enemiesRemaining <= 0) {
		//	currentGameState = gameState.newRound;
		//	show_debug_message("New round.");
		//	return true;
		//}
		
		#endregion
		
		#region countdown timer
		
		if newRoundCounter >= newRoundTimer {
			currentGameState = gameState.newRound;
		}
		
		#endregion
		
		break;
	case gameState.gameOver:
		if keyboard_check(ord("R")) room_restart();
		break;
}