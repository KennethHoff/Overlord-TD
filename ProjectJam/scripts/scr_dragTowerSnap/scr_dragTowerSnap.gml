scr_findTowerInd(argument0);

	var snap_x = (mouse_x div 32) * 32;
	var snap_y = (mouse_y div 32) * 32;
	if towerDraggable = -1 return;

if (global.holdingTower != noone) {
	instance_destroy(global.holdingTower);	
}
if (global.coins >= towerClickable.cost){
	global.holdingTower = instance_create_depth(snap_x,snap_y,-9, towerDraggable);
		//global.coins -= towerClickable.cost;
}