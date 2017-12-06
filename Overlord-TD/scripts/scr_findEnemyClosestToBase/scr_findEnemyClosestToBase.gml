var enemy = noone;
var count = -1; // Highest pos so far

with (obj_Enemy_Parent) {
	if (point_distance(other.x, other.y, x, y) <= other.range) || other.range == -1 {
		if (pos > count) {
			count = pos;
			enemy = id;
		}
	}
}

if enemy != noone return enemy;
else return noone;