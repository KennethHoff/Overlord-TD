// Gjør om til State Machine!

if scr_hover() {
	
	if global.key_delete {
		instance_destroy();
		global.coins += towerClickable.cost / 2;
	}
	
	image_index = 1;
	hovering = true;
}
else {
	image_index = 0;
	hovering = false;
}
