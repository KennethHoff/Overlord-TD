var towerIndex = argument0;
var towerCost = ds_map_find_value(global.towers, towerIndex);

scr_findTowerInd(towerIndex);
	
instance_destroy();
		
instance_create_depth(x, y, "Towers", towerPlaced);
global.holdingTower = noone;

global.coins -= towerCost;