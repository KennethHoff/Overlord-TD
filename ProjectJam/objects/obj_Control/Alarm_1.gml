if instance_number(obj_Enemy) = 0 {
	global.spawn_count = 0;
	global.spawn_amount = round(global.spawn_amount * global.spawnAmountMultiplier);
	global.level++
	global.hpMultiplier += 0.25;
	global.spdMultiplier += 0.5;
	if (global.spawn_rate >= 1) {
		global.spawn_rate -= room_speed * 0.1;
	}
	roundStarting = false;
	alarm[0] = 1;
}