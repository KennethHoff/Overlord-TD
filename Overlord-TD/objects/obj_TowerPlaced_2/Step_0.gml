switch towerLevel {
	case 1:
		minRange = -1;
		maxRange = 100;
		fire_rate = room_speed / (1 + 1/3);
		bulletDmg = 50;
		bulletSpd = 3;
		
		bulletAmount = 8;
		
		
		upgradeCost = 200;
		sprite_index = spr_Tower2_1;
		break;
		
	case 2:
		minRange = -1;
		maxRange = 120;
		fire_rate = room_speed / (2 + 2/3);
		bulletDmg = 50;
		bulletSpd = 3;
		
		bulletAmount = 16;
		
		
		upgradeCost = 400;
		sprite_index = spr_Tower2_2;
		break;
		
	case 3:
		minRange = -1;
		maxRange = 150;
		fire_rate = room_speed / 4;
		bulletDmg = 50;
		bulletSpd = 3;
		
		bulletAmount = 32;
		
				
		upgradeCost = -1;
		sprite_index = spr_Tower2_3;
		break;
}
event_inherited();