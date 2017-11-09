scr_findTowerInd(argument0);

if towerDraggable = -1 return;

if (global.holdingTower != noone) {
	instance_destroy(global.holdingTower);	
}
if (global.coins >= towerClickable.cost){
	global.holdingTower = instance_create_depth(mouse_x,mouse_y,-9, towerDraggable);
		//global.coins -= towerClickable.cost;
}