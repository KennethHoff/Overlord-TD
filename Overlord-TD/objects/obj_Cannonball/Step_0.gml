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

var inst = scr_collision_line_first((x-image_xscale)-hspeed*3, (y-image_yscale)-vspeed*3, (x+image_xscale)+hspeed*3, (y+image_yscale)+vspeed*3, obj_Enemy_Parent, true, true);

if distance_to_point(targetX, targetY) <= speed {
	scr_explodeCannonball();
}