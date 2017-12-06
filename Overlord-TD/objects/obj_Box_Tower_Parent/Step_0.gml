if towerID == noone	{
	//instance_deactivate_object(obj_Box_Tower_TargettingMode);
	return;
}
//instance_activate_object(obj_Box_Tower_TargettingMode);

towerObject = asset_get_index(object_get_name(towerID));

towerSpriteIndex = towerID.sprite_index;