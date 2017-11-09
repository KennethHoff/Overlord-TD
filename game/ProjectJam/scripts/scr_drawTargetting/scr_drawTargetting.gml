if scr_hover() {
	draw_circle(x ,y, range, true);
	
	if (objectToShoot == noone || nearestEnemy == noone) return; // Hvis den er noone, går du ut av scriptet. (Litt bedre performance enn det motsatte.)
	draw_line(x, y, nearestEnemy.x, nearestEnemy.y);
	
}