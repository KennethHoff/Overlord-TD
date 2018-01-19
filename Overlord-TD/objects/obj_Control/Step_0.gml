switch (currentGameState) {
	case gameState.newGame:
		if !audio_is_playing(snd_Hellmarch) {
			audio_play_sound(snd_Hellmarch, 100, true);
		}
		scr_getInput();
		scr_towerDragging();
		scr_countEnemies();
		scr_clickTower();
		scr_towerClickedHotkeys();
		
		if (global.openPathsListSize > 0) {
			//global.music = true;
			currentGameState = gameState.spawning;
		}
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

		#region countdown timer
		
		if newRoundCounter >= newRoundTimer {
			currentGameState = gameState.newRound;
		}
		
		#endregion
		
		break;
	case gameState.gameOver:
		if keyboard_check(vk_shift) {
			if keyboard_check_pressed(ord("R")) {
				room_restart();
			}
		}
		restartTimer--;
		audio_stop_all();
		if restartTimer <= 0 game_restart();
		break;
}

if (global.music) audio_resume_sound(snd_Hellmarch);
else if (!global.music) audio_pause_sound(snd_Hellmarch);