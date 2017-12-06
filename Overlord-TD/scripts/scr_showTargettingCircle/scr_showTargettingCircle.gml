if scr_hover() || obj_Box_Tower_Parent.towerID == id{
	
	if maxRange != -1 {
		draw_set_color(c_black);
		draw_circle(x ,y, maxRange, true);
	}
	if minRange != -1 {
		draw_set_color(c_white);
		draw_circle(x ,y, minRange, true);
	}
	if enemyInRange && object_exists(enemyToShoot) draw_line(x, y, enemyToShoot.x, enemyToShoot.y);
}