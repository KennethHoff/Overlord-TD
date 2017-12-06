counter += 1 * global.gamespeed;
if ( counter < global.spawn_rate)
{
	return false;
}
if (global.spawn_count >= global.spawn_amount)
{
	global.currentRoundState = roundStates.waiting;
	return false;
}

instance_create_layer(x, y, "Enemies", obj_Enemy);
global.spawn_count++;
show_debug_message("Spawn Count:" + string(global.spawn_count) + ". Spawn Amount: " + string(global.spawn_amount) + ". Spawn Rate: " + string(global.spawn_rate));
counter = 0;
return true;
