draw_self();

if obj_Control.currentGameState == gameState.gameOver return; // Gjør ikke koden under, dersom "Game Over" er sant.

if hovering { // Hvis mus holder over Entity.
	if blocking {
		
		if global.openPathsListSize = 0 {
			draw_text(700, 35, "Click on this to remove Blockade");
			return;
		}
		draw_text(700, 35, "Click on this to remove Blockade.\nThis costs: " + string(global.roadBlockRemoveCost));
	}
}