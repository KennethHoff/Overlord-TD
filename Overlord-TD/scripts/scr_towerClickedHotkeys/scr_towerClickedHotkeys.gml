if obj_Box_Tower_Parent.towerID == noone {
	return;
}

if instance_exists(obj_Box_Tower_Parent.towerID) {
	with obj_Box_Tower_Parent.towerID {
		if global.key_n_pressed currentTargettingState = obj_Box_Tower_Parent.towerTargettingStates.nearestEnemy;	
		else if global.key_c_pressed currentTargettingState = obj_Box_Tower_Parent.towerTargettingStates.closestToBase;
		else if global.key_f_pressed currentTargettingState = obj_Box_Tower_Parent.towerTargettingStates.furthestFromBase;
		else if global.key_s_pressed currentTargettingState = obj_Box_Tower_Parent.towerTargettingStates.strongest;
		else if global.key_w_pressed currentTargettingState = obj_Box_Tower_Parent.towerTargettingStates.weakest;
		
		if global.key_u_pressed {
			if global.coins >= upgradeCost && upgradeCost != -1 {
				global.coins -= upgradeCost;
				refundValue += upgradeCost/2
				towerLevel++;
			}
		}
		if global.key_delete_pressed {
			instance_destroy();
			global.coins += towerID.refundValue;
		}
	}
}