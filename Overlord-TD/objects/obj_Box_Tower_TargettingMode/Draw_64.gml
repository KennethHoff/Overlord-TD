if towerID == noone {
	return;
}

draw_set_halign(fa_left);
draw_text(x+10, y, towerID.towerTargetString);