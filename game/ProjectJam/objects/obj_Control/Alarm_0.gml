if(global.spawn_count < global.spawn_amount){
	instance_create_layer(x, y, "Enemies", obj_Enemy);
	global.spawn_count++;
	alarm[0] = global.spawn_rate;
}