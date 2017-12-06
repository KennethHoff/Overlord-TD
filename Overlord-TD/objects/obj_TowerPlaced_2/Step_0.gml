switch towerLevel {
	case 1:
		minRange = -1;
		maxRange = 100;
		fire_rate = room_speed / 10;
		bulletDmg = 20;
		bulletSpd = 3;
		bulletCurve = 1;
		
		upgradeCost = 200;
		sprite_index = spr_Tower2_1;
		break;
		
	case 2:
		minRange = -1;
		maxRange = 120;
		fire_rate = room_speed / 12;
		bulletDmg = 30;
		bulletSpd = 3;
		bulletCurve = 1;
		
		upgradeCost = 400;
		sprite_index = spr_Tower2_2;
		break;
		
	case 3:
		minRange = -1;
		maxRange = 150;
		fire_rate = room_speed / 15;
		bulletDmg = 50;
		bulletSpd = 3;
		bulletCurve = 2;
		
		upgradeCost = -1;
		sprite_index = spr_Tower2_3;
		break;
}
event_inherited();