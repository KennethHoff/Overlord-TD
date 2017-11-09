draw_self();
if hovering { // Hvis mus holder over Entity.
	if blocking {
		if global.openPathsListSize = 0 {
			draw_text(x-100, y-sprite_height, "Click on this to remove Blockade");
			return;
		}
		draw_text(x-100, y-sprite_height, "Click on this to remove Blockade.\nThis costs: " + string(global.roadBlockRemoveCost));
	}
}