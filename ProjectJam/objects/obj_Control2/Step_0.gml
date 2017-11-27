switch (global.currentRoundState) {
	case roundStates.newGame: 
		scr_getInput();
		scr_towerDragging();
		scr_countEnemies();
		#region start Game
		
		if (global.openPathsListSize > 0) {
			global.currentRoundState = roundStates.newRound;	
		}
		
		#endregion
		break;
		
	case roundStates.newRound: // Burde gå rett fra "new round" -> "spawning", så trenger ikke input etc..
		scr_newRound();
		break;
		
	case roundStates.spawning: // Spawning enemies.
		scr_getInput();
		scr_towerDragging();
		scr_spawnEnemies();
		scr_countEnemies();
		break;
		
	case roundStates.waiting: // All enemies have spawned. Waiting for them to die.
		scr_getInput();
		scr_towerDragging();
		scr_countEnemies();
		
		#region waiting for all enemies to be dead.
		if (global.enemiesRemaining = 0) {
			global.currentRoundState = roundStates.newRound;
			show_debug_message("New round.");
			return true;
		}
		//show_debug_message("Waiting for all enemies to be dead.");
		
		#endregion
		break;
}

//show_debug_message("Current Round state:" + string(global.currentRoundState));