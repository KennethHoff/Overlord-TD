var enemy = instance_nearest(x, y, obj_Enemy);

if (enemy == noone) return noone; // Hvis ingen enemy. Returner "false"

if range != -1 {
	if (point_distance(x, y, enemy.x, enemy.y) <= range) {
		return enemy; // Hvis det er en enemy _innen range_. Returner "true".
	}
}
else {
	return enemy;
}
return noone; // Hvis ingen enemy _innen range_. Returner noone.