if instance_number(obj_Enemy) == 0 && roundStarting == false {
	show_debug_message("Round ended.");
	roundStarting = true;
	alarm[1] = room_speed * 2;
}