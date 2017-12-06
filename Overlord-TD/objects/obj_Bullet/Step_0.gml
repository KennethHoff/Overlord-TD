if obj_Control.currentGameState == gameState.gameOver {
	speed = 0;
	return;
}

speed = baseSpeed * global.gamespeed;

if (instance_exists(target)) {
	var angle_to_target = point_direction(x, y, target.x, target.y);
	direction += scr_get_angle(angle_to_target, curve * global.gamespeed);
}
else target = noone;

var inst = scr_collision_line_first((x-image_xscale)-hspeed*3, (y-image_yscale)-vspeed*3, (x+image_xscale)+hspeed*3, (y+image_yscale)+vspeed*3, obj_Enemy_Parent, true, true);

//if inst == noone {
//	var inst = scr_collision_line_first(x, y, (x-image_xscale)-hspeed*3, (y-image_yscale)-vspeed*3, obj_Enemy_Parent, true, true);
//}

if inst != noone {		
	with inst {
		hp -= other.dmg;
		instance_destroy(other);
		if instance_exists(other.owner)	other.owner.damageDone += other.dmg;
		
		if (hp <= 0) {
			instance_destroy();	
			global.coins += coinGain * global.coinGainMultipler;
			if instance_exists(other.owner)	other.owner.enemiesKilled++;
		}
	}
}