if towerID == noone {
	object_set_visible(id, false);
	return;
}

if (towerID.currentTargettingState == image_index) var col = c_red;
else var col = c_green;


object_set_visible(id, true);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, col, 1);