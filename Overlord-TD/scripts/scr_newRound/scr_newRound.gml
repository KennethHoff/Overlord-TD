global.level++;

additionalEnemiesToSpawn = argument0;

newRoundCounter = 0;

if ( floor(global.level / 5) == global.level / 5) {
	spawnHealthAdd += 10;
	show_debug_message("Round is dividable by 5.");
}

spawn_count = 0;
global.roundEnemiesDead = 0;
spawn_amount = round(spawn_amount * spawnAmountMultiplier)+additionalEnemiesToSpawn;

global.hpMultiplier += spawnHealthAdd / 100;

//global.spdMultiplier = global.spdMultiplier * 1.1; // Disabled this, didn't feel right.

spawn_rate -= round(spawn_rate * 0.1);

if spawn_rate < 1 {
	spawn_rate = 1; 	
}