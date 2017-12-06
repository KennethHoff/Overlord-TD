if (currentGameState == gameState.gameOver) {
	draw_text(browser_width/2, browser_height/2, "Game over.");
}
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_text(10, 20, "Coins: " + string(global.coins));
draw_text(10, 40, "Level: " + string(global.level));
draw_text(10, 60, "Enemies: " + string(global.enemiesRemaining));
draw_text(10, 80, "Gamespeed: " + string(global.gamespeed));
if !(currentGameState == gameState.waiting) draw_text(10, 100, "Spawn Rate: " + string(spawn_rate));
else draw_text(10, 100, "New round starting in: " + string( (newRoundTimer - newRoundCounter) / room_speed));
draw_text(10, 120, "Spawn Counter: " + string(counter));
draw_text(10, 140, "Currently Living Enemies that has passed Gate: " + string(global.enemiesPassedGate));