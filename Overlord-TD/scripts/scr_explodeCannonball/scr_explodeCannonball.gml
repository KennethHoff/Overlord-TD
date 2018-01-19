// scr_explodeCannonball(number of clusterbombs)

var enemiesInRange = ds_list_create();

with (obj_Enemy_Parent) {
	if distance_to_object(other) <= other.explosionRadius {
		ds_list_add(enemiesInRange, id);
		show_debug_message("Added enemy to list");
	}
}

if !ds_list_empty(enemiesInRange) {
	for (var i = 0; i < ds_list_size(enemiesInRange); ++i) {
		var enemy = ds_list_find_value(enemiesInRange, i);
		var dist = distance_to_point(enemy.x, enemy.y);
		
		if !instance_exists(enemy) return;
		//if dist < 10 enemy.hp -= dmg;
		//else if dist < 30 enemy.hp -= dmg * 2/3;
		//else if dist < 50 enemy.hp -= dmg * 1/3;
		enemy.hp -= dmg;
		if instance_exists(owner) owner.damageDone += dmg;
		
		if enemy.hp <= 0 {
			var overkill = -enemy.hp;
			global.coins += enemy.coinGain * global.coinGainMultipler;
			if instance_exists(owner) {
				owner.enemiesKilled++;
				owner.damageDone -= enemy.hp;
			}
			show_debug_message("Cannonball killed an enemy.");
			instance_destroy(enemy);
		}
	}
}
if clusterBombAmount > 0 {
	show_debug_message("Created Cluster Bombs");
	scr_clusterbombs();
}
exploded = true;
if global.soundEffects {
	audio_sound_pitch(snd_CannonballExplosion, global.gamespeed);
	audio_play_sound(snd_CannonballExplosion, 5, 0);
}