switch towerLevel {
	case 1:
		range = 150;
		fire_rate = room_speed / 3;
		bulletDmg = 25;
		bulletSpd = 2;
		bulletCurve = 2;
		
		upgradeCost = 100;
		sprite_index = spr_Tower1_1;
		break;
	case 2:
		range = 200;
		fire_rate = room_speed / 6;
		bulletDmg = 37.5;
		bulletSpd = 3;
		bulletCurve = 2;
		
		upgradeCost = 200;
		sprite_index = spr_Tower1_2;
		break;
	case 3:
		range = 250;
		fire_rate = room_speed / 9;
		bulletDmg = 50;
		bulletSpd = 4;
		bulletCurve = 2;
		
		upgradeCost = -1;
		sprite_index = spr_Tower1_3;
		break;
}
event_inherited();