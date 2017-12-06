counter += 1 * global.gamespeed
if (counter > spawn_rate) {
	instance_create_layer(x, y, "Enemies", obj_Enemy);
	var overflow = spawn_rate - counter;
	spawn_count++;
	show_debug_message("Spawn Count:" + string(spawn_count) + ". Spawn Amount: " + string(spawn_amount) + ". Spawn Rate: " + string(spawn_rate));
	counter = 0 + overflow;
	return true;
}