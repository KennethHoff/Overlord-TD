if towerID == noone return;

if ( object_get_visible(id) == false ) return;
if scr_hover() {
	if global.lmb_pressed {
		towerID.currentTargettingState = image_index;
	}
}
event_inherited();