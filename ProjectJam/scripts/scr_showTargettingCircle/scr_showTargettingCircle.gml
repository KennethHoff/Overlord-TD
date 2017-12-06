if scr_hover() {
	draw_circle(x ,y, range, true);
	if enemyInRange && object_exists(enemyToShoot) draw_line(x, y, nearestEnemy.x, nearestEnemy.y);
}