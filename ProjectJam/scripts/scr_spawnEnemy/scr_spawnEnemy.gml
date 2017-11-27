if ( instance_number(obj_Enemy) > global.enemyCap) {
	return false;
}

instance_create_layer(global.spawnX, global.spawnY, "Enemies", obj_Enemy);
return true
