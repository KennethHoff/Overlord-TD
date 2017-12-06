switch argument0 {
	case true:
		instance_activate_object(obj_Box_Tower_NearestToTower);
		instance_activate_object(obj_Box_Tower_ClosestToBase);
		instance_activate_object(obj_Box_Tower_FurthestFromBase);
		instance_activate_object(obj_Box_Tower_Strongest);
		instance_activate_object(obj_Box_Tower_Weakest);
		
		break;
		
	case false:
		instance_deactivate_object(obj_Box_Tower_NearestToTower);
		instance_deactivate_object(obj_Box_Tower_ClosestToBase);
		instance_deactivate_object(obj_Box_Tower_FurthestFromBase);
		instance_deactivate_object(obj_Box_Tower_Strongest);
		instance_deactivate_object(obj_Box_Tower_Weakest);
		
		break;
}