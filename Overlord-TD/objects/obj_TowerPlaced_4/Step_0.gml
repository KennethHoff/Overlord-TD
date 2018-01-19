switch towerLevel {
	case 1:
		maxRange = 100;
		fire_rate = room_speed * 1.5;
		bulletDmg = 100;
		bulletExplosionRadius = 50;
		bulletSpd = 2;
		bulletCurve = 2;
		
		clusterBombDamage = -1;
		clusterBombAmount = 0;
		clusterBombDistance = 10;
		clusterBombExplosionRadius = 50;
		
		upgradeCost = 300;
		sprite_index = spr_Tower_Cannon1;
		break;
		
	case 2:
		maxRange = 150;
		fire_rate = room_speed * 1.5;
		bulletDmg = 200;
		bulletExplosionRadius = 50;
		bulletSpd = 2;
		bulletCurve = 2;
		
		clusterBombDamage = 25;
		clusterBombAmount = 4;
		clusterBombDistance = 25;
		clusterBombSpeed = clusterBombDistance / 8.33;
		clusterBombExplosionRadius = 50;
		
		upgradeCost = 500;
		sprite_index = spr_Tower_Cannon2;
		break;
		
	case 3:
		maxRange = 225;
		fire_rate = room_speed * 1.5;
		bulletDmg = 150;
		bulletExplosionRadius = 50;
		bulletSpd = 2;
		bulletCurve = 2;
		
		clusterBombDamage = 50;
		clusterBombAmount = 8;
		clusterBombDistance = 50;
		clusterBombExplosionRadius = 50;
		
		upgradeCost = -1;
		sprite_index = spr_Tower_Cannon3;
		break;
}
event_inherited();