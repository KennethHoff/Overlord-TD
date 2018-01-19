if obj_Control.currentGameState == gameState.gameOver {
	speed = 0;
	return;
}

if exploded {
	speed = 0;
	explodeTimer += 1 * global.gamespeed;
	
	if explodeTimer >= room_speed * 0.05 {
		instance_destroy();
	}
	return;
}

speed = baseSpeed * global.gamespeed;

if distance_to_point(baseX, baseY) >= explosionDistance {
	x = baseX + lengthdir_x(explosionDistance, direction);
	y = baseY + lengthdir_y(explosionDistance, direction);
	scr_explodeClusterbomb();
}