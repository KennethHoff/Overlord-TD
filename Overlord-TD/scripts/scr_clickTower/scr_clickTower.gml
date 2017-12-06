if global.lmb_pressed {
	
	if !instance_exists(obj_TowerPlaced_Parent) return; // Hvis ingen Towers finnes, gå ut av scriptet.
		
	var inst = instance_nearest(mouse_x, mouse_y, obj_TowerPlaced_Parent); // Velg Tower som er nærmest Mouse
	
	if (point_distance(mouse_x, mouse_y, inst.x, inst.y) < obj_Control.mouseHitBox ) {
		obj_Box_Tower_Parent.towerID = inst; // Sett Selected Tower til nevnt Tower.
	}
	else {
		obj_Box_Tower_Parent.towerID = noone;
	}
	show_debug_message("Clicked on a tower. " + string(inst));
}