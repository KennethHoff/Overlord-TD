if hovering { // Hvis mus holder over Entity.
	if blocking draw_text(x-100, y-20, "Click on this to remove Blockade");
	else draw_text(x-100, y-20, "Hidden.");
}
draw_self();