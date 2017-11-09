var snap_x = (mouse_x div 32) * 32;
var snap_y = (mouse_y div 32) * 32;

var inst = instance_position(snap_x, snap_y, obj_wall);

// Hvis block allerede finnes, fjern istedenfor.
if instance_exists(inst) {
	with (inst) instance_destroy();	
}
else {
	inst = instance_create(snap_x, snap_y, obj_wall);
	with (inst) mp_grid_add_instances(global.AI_grid, id, false);
	if scr_Define_Path() {
		with (obj_pathfinder) {
			xx = path_get_point_x(global.path, pos);
			yy = path_get_point_y(global.path, pos);
		}
	}
	else with (inst) instance_destroy();
}