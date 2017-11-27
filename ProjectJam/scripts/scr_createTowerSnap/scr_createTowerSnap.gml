if(col == global.placeableCol){
	var snap_x = (mouse_x div 32) * 32+32;
	var snap_y = (mouse_y div 32) * 32+32;
	
	scr_findTowerInd(towerInd);
	
	instance_destroy();
		
	instance_create_depth(snap_x, snap_y, "Towers", towerPlaced);
	global.holdingTower = noone;

	global.coins -= towerClickable.cost;
}