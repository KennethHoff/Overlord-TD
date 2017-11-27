scr_findTowerInd(towerInd);
	
instance_destroy();
		
instance_create_depth(x, y, "Towers", towerPlaced);
global.holdingTower = noone;

global.coins -= towerClickable.cost;