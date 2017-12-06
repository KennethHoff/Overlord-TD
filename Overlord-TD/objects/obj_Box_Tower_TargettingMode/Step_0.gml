if towerID == noone return;

if scr_hover() {
	if global.lmb_pressed {
		towerID.currentTargettingState = image_index;
	}
}
event_inherited();