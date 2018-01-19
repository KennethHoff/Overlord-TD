if scr_hover() {
	if global.lmb_pressed {
		towerID.currentTargettingState = image_index;
		show_debug_message("Clicked on Targetting mode icon.");
	}
	hovering = true;
}
else hovering = false;