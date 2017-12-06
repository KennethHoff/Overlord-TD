if obj_Control.currentGameState == gameState.gameOver return; // Gjør ikke koden under, dersom "Game Over" er sant.

// Dette blir satt i "scr_towerDragging".

switch (currentPlaceableState) {
	case dragTowerStates.placeable:
		if global.lmb_pressed {
			scr_createTowerSnap(towerInd); 
			show_debug_message("Placed tower.");
		}
		col = global.placeableCol
		break;
		
	case dragTowerStates.unplaceable:
		col = global.errorCol;
		break;
}