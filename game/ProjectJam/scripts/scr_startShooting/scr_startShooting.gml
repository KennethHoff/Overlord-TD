nearestEnemy = instance_nearest(x,y,obj_Enemy);

if (nearestEnemy == noone) return;

if (point_distance(x,y,nearestEnemy.x,nearestEnemy.y) <= range) {
	objectToShoot = nearestEnemy;
	
	if (!shooting) {
		alarm[0] = 1; // Starte firing
		shooting = true;
	}
}
else {
	shooting = false;
	objectToShoot = noone;
}
