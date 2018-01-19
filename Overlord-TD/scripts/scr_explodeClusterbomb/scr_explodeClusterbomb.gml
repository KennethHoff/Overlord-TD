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

		enemy.hp -= dmg;
		if instance_exists(owner) owner.damageDone += dmg;
		if enemy.hp <= 0 {
			var overkill = -enemy.hp;
			global.coins += enemy.coinGain * global.coinGainMultipler;
			if instance_exists(owner) {
				owner.enemiesKilled++;
				owner.damageDone -= overkill;
			}
			show_debug_message("Cannonball killed an enemy.");
			instance_destroy(enemy);
		}
	}
}
if global.soundEffects {
	audio_sound_pitch(snd_ClusterbombExplosion, global.gamespeed);
	audio_play_sound(snd_ClusterbombExplosion, 5, 0);
}

exploded = true;