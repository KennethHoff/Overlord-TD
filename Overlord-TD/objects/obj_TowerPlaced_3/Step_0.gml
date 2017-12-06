switch towerLevel {
	case 1:
		range = -1;
		fire_rate = room_speed / 1;
		bulletDmg = 100;
		bulletSpd = 15;
		bulletCurve = 5;
		
		upgradeCost = 500;
		sprite_index = spr_Tower3_1;
		break;
	case 2:
		range = -1;
		fire_rate = room_speed / 1.5;
		bulletDmg = 200;
		bulletSpd = 15;
		bulletCurve = 5;
		
		upgradeCost = 1000;
		sprite_index = spr_Tower3_2;
		break;
	case 3:
		range = -1;
		fire_rate = room_speed / 2;
		bulletDmg = 400;
		bulletSpd = 15;
		bulletCurve = 5;
		
		upgradeCost = -1;
		sprite_index = spr_Tower3_3;
		break;
}
event_inherited();