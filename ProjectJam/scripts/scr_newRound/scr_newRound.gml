global.spawn_count = 0;
global.roundEnemiesDead = 0;
global.spawn_amount = round(global.spawn_amount * global.spawnAmountMultiplier);
global.level++;
global.hpMultiplier = global.hpMultiplier * 1.20;
global.spdMultiplier = global.spdMultiplier * 1.1;

global.spawn_rate -= round(global.spawn_rate * 0.05);
if global.spawn_rate < 1 {
	global.spawn_rate = 1; 	
}
global.currentRoundState = roundStates.spawning