nearestEnemy = instance_nearest(x,y,obj_Enemy);

if (nearestEnemy == noone) return false; // Hvis ingen enemy. Returner "false"

if (point_distance(x, y, nearestEnemy.x, nearestEnemy.y) <= range) {
	return true; // Hvis det er en enemy _innen range_. Returner "true".
}

return false; // Hvis ingen enemy _innen range_. Returner false.