if hovering { // Hvis mus holder over Entity.
	if blocking {
		
		if global.roadBlockRemoveCost = 0 {
			draw_text(700, 35, "Click on this to remove Blockade");
			return;
		}
		draw_text(700, 35, "Click on this to remove Blockade.\nThis costs: " + string(global.roadBlockRemoveCost));
	}
}