if instance_number(obj_Enemy) = 0 {
	spawn_count = 0;
	spawn_amount++;
	global.level++
	global.hpMultiplier += 0.1;
	global.spdMultiplier += 0.1;
	spawn_rate -= 2.5;
	roundStarting = false;
	alarm[0] = 1;
}