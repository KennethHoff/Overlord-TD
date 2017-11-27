scr_findTowerInd(argument0);
	if towerPlaced = -1 return;

if (global.holdingTower != noone) {
	instance_destroy(global.holdingTower);	
}

if (global.coins >= towerClickable.cost){
	global.holdingTower = instance_create_depth(x,y,"TowerDraggable", towerDraggable);
		//global.coins -= towerClickable.cost;
}