draw_set_halign(fa_center);
if (currentGameState == gameState.gameOver) {
	draw_text(browser_width/2, browser_height/2-80, "Game over.\nShift+R to restart.\nRestarter automatisk om: " + string(restartTimer / room_speed));
}
if (currentGameState == gameState.newGame) {
	draw_text(browser_width/2, browser_height/2 - 80, "Fjern en blokkade for å starte.");	
}

draw_set_halign(fa_left);
draw_set_color(c_white);
