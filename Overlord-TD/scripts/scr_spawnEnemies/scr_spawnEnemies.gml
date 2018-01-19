counter += 1 * global.gamespeed
if (counter > spawn_rate) {
	instance_create_layer(x, y, "Enemies", obj_Enemy);
	var overflow = spawn_rate - counter;
	spawn_count++;
	counter = 0 + overflow;
	return true;
}