var towerIndex = argument0;
var towerCost = ds_map_find_value(global.towers, towerIndex);

scr_findTowerInd(argument0);
	if towerPlaced = -1 return;

if (global.holdingTower != noone) {
	instance_destroy(global.holdingTower);	
}

if (global.coins >= towerCost){
	global.holdingTower = instance_create_depth(x,y,"TowerDraggable", towerDraggable);
}