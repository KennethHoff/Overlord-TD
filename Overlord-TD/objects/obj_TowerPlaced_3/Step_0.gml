switch towerLevel {
	case 1:
		minRange = 100;
		maxRange = -1;
		fire_rate = room_speed / 1;
		bulletDmg = 150;
		bulletSpd = 15;
		bulletCurve = 5;
		homing = true;
		
		upgradeCost = 500;
		sprite_index = spr_Tower3_1;
		break;
	case 2:
		minRange = 100;
		maxRange = -1;
		fire_rate = room_speed / 1.5;
		bulletDmg = 300;
		bulletSpd = 15;
		bulletCurve = 5;
		homing = true;
		
		upgradeCost = 1000;
		sprite_index = spr_Tower3_2;
		break;
	case 3:
		minRange = 100;
		maxRange = -1;
		fire_rate = room_speed / 2;
		bulletDmg = 600;
		bulletSpd = 15;
		bulletCurve = 5;
		homing = true;
		
		upgradeCost = -1;
		sprite_index = spr_Tower3_3;
		break;
}
event_inherited();