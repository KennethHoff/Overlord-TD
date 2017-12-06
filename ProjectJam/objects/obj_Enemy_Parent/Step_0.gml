if (hp <= 0) {
	instance_destroy();	
	global.coins += 20;
}

path_speed = moveSpd * global.gamespeed;