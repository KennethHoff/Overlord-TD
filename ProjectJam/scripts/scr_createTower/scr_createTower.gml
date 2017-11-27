if(col == global.placeableCol){
	scr_findTowerInd(towerInd);
	
	instance_destroy();
		
	instance_create_depth(mouse_x, mouse_y, -1, towerPlaced);
	global.holdingTower = noone;

	global.coins -= towerClickable.cost;
}