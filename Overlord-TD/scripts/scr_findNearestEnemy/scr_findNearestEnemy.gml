var enemy = noone;
var count = -1; // Highest pos so far

with (obj_Enemy_Parent) {
	var distance = point_distance(other.x, other.y, x, y);
	if ( distance <= other.maxRange ) || other.maxRange == -1 {
		if (distance >= other.minRange) || other.minRange == -1 {
			enemy = instance_nearest(x, y, obj_Enemy_Parent);
		}
	}
}

if enemy != noone return enemy;
else return noone;