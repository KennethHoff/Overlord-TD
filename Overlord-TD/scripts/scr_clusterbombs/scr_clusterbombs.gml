for (var i = 0; i < clusterBombAmount; ++i) {
	var bullet = instance_create_layer(x, y, "Projectiles", obj_Clusterbombs);
	{
	bullet.baseSpeed = clusterBombDistance / 25 * 120 / room_speed;
	bullet.speed = bullet.baseSpeed * global.gamespeed;
	bullet.direction = 360 / clusterBombAmount * i;
	bullet.explosionDistance = clusterBombDistance
	bullet.baseX = x;
	bullet.baseY = y;
	bullet.dmg = clusterBombDamage;
	bullet.explosionRadius = clusterBombExplosionRadius;
	bullet.owner = owner;
	}
}