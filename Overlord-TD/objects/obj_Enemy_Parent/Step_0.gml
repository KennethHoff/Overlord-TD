if obj_Control.currentGameState == gameState.gameOver { // Gjør ikke koden under, dersom "Game Over" er sant.
	path_speed = 0;
	return; 
}

pos += moveSpd * global.gamespeed;

percentHP = hp / maxHP * 100;

path_speed = moveSpd * global.gamespeed;