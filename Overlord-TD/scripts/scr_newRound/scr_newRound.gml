additionalEnemiesToSpawn = argument0;


newRoundCounter = 0;

spawn_count = 0;
global.roundEnemiesDead = 0;
spawn_amount = round(spawn_amount * spawnAmountMultiplier)+additionalEnemiesToSpawn;
global.level++;
global.hpMultiplier = global.hpMultiplier * 1.20;
//global.spdMultiplier = global.spdMultiplier * 1.1; // Disabled this, didn't feel right.

spawn_rate -= round(spawn_rate * 0.1);

if spawn_rate < 1 {
	spawn_rate = 1; 	
}