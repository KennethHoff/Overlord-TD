if scr_hover() {
	if range != -1 draw_circle(x ,y, range, true);
	if enemyInRange && object_exists(enemyToShoot) draw_line(x, y, enemyToShoot.x, enemyToShoot.y);
}