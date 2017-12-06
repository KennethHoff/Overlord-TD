//// Gjør om til State Machine!

//counter += 1 * global.gamespeed;

//if scr_hover() {
	
//	if global.key_delete {
//		instance_destroy();
//		global.coins += towerCost / 2;
//	}
	
//	image_index = 1;
//	hovering = true;
//}
//else {
//	image_index = 0;
//	hovering = false;
//}

//if scr_checkEnemyInRange() {
//	enemyInRange = true;
//	enemyToShoot = nearestEnemy;
	
//	if ( counter > fire_rate) {
//		var bullet = instance_create_layer(x, y, "Projectiles", obj_Bullet);
//		with (bullet) {
//			//speed = other.bulletSpd * global.gamespeed;
//			hspeed = other.bulletSpd * cos(degtorad(point_direction(other.x,other.y, mouse_x, mouse_y)));
//			vspeed = other.bulletSpd * -sin(degtorad(point_direction(other.x,other.y,mouse_x, mouse_y)));

//			dmg = other.bulletDmg;
//		}
//		counter = 0;
//	}
//}
//else {
//	enemyInRange = false;
//	enemyToShoot = noone;
//}