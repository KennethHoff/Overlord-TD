var target = argument0;
var type = argument1;
var amount = argument2;

switch type {
	case bulletTypes.bullet: // Normal, 1 shot forward (Generally homing)
		var bullet = instance_create_layer(x, y, "Projectiles", obj_Bullet);
		{
			bullet.target = target;
			bullet.baseSpeed = bulletSpd * 120 / room_speed;
			bullet.speed = bullet.baseSpeed * global.gamespeed;
			bullet.direction = point_direction(bullet.x, bullet.y, target.x, target.y);
			bullet.dmg = bulletDmg;
			bullet.curve = bulletCurve;
			bullet.owner = id;
			bullet.homing = homing
			bullet.startX = x;
			bullet.startY = y;
			bullet.dropOffDistance = bulletDropOffDistance;
				
			if global.soundEffects {
				if firingSound != -1 {
					audio_sound_pitch(firingSound, global.gamespeed);
					audio_play_sound(firingSound, firingSoundPriority, 0);
				}
			}
		}

		break;
		
	case bulletTypes.shotgun: // Spread of X amounts of bullets forward
		for (var i = 0; i < amount; ++i) {
			var bullet = instance_create_layer(x, y, "Projectiles", obj_Bullet);
			{
				bullet.target = target;
				bullet.baseSpeed = bulletSpd * 120 / room_speed;
				bullet.speed = bullet.baseSpeed * global.gamespeed;
				bullet.direction = point_direction(bullet.x, bullet.y, target.x, target.y) + bulletSpread / amount * i;
				bullet.dmg = bulletDmg;
				bullet.curve = bulletCurve;
				bullet.owner = id;
				bullet.homing = homing;
				bullet.startX = x;
				bullet.startY = y;
				bullet.dropOffDistance = bulletDropOffDistance;
			}
		}
		if global.soundEffects {
			if firingSound != -1{
				audio_sound_pitch(firingSound, global.gamespeed);
				audio_play_sound(firingSound, firingSoundPriority, 0);
			}
		}
		
		break;
	
	case bulletTypes.spread: // Shoots in a wide arc around the tower
		for (var i = 0; i < amount; ++i) {
			var bullet = instance_create_layer(x, y, "Projectiles", obj_Bullet);
			{
				bullet.target = target;
				bullet.baseSpeed = bulletSpd * 120 / room_speed;
				bullet.speed = bullet.baseSpeed * global.gamespeed;
				bullet.direction = point_direction(bullet.x, bullet.y, x, y) + 360 / amount * i;
				bullet.dmg = bulletDmg;
				bullet.curve = bulletCurve;
				bullet.owner = id;
				bullet.homing = homing;
				bullet.startX = x;
				bullet.startY = y;
				bullet.dropOffDistance = bulletDropOffDistance;
			}
		}
		break;
	case bulletTypes.cannonball: // Shoots an explosive bullet that explodes on impact.
		var bullet = instance_create_layer(x, y, "Projectiles", obj_Cannonball);
		{
			bullet.target = target;
			bullet.targetX = target.x;
			bullet.targetY = target.y;
			bullet.baseSpeed = bulletSpd * 120 / room_speed;
			bullet.speed = bullet.baseSpeed * global.gamespeed;
			bullet.direction = point_direction(bullet.x, bullet.y, target.x, target.y); 
			bullet.dmg = bulletDmg;
			bullet.explosionRadius = bulletExplosionRadius;
			bullet.curve = bulletCurve;
			bullet.owner = id;
			
			bullet.clusterBombDamage = clusterBombDamage;
			bullet.clusterBombAmount = clusterBombAmount;
			bullet.clusterBombDistance = clusterBombDistance;
			bullet.clusterBombExplosionRadius = clusterBombExplosionRadius;
		}
		break;
}