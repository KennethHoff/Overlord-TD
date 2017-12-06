if obj_Control.currentGameState == gameState.gameOver return; // Gjør ikke koden under, dersom "Game Over" er sant.

if scr_hover() {
	hovering = true;	
}
else {
	hovering = false;	
}

if hovering {
	if global.lmb_pressed {
		if (global.openPathsListSize = 0 || global.coins >= global.roadBlockRemoveCost) {
			global.coins -= global.roadBlockRemoveCost;
			blocking = false;
			show_debug_message(string(blockedPath) + " is set to: " + string(blocking));
			scr_createList();
			global.roadBlockRemoveCost += global.roadBlockRemoveCostIncrease;
			
		}
	}

}

if (!blocking) visible = false;