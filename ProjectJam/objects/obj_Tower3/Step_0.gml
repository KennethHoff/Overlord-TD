if scr_hover() {
	image_index = 1;
	if global.lmb_click {
		if clickedOnce {
			instance_destroy();
			return;
		}
		clickedOnce = true;
	}
	hovering = true;
}
else {
	image_index = 0;
	hovering = false;
	clickedOnce = false;
}
