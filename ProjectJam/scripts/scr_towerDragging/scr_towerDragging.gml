
snap_x = (mouse_x div 32) * 32+32;
snap_y = (mouse_y div 32) * 32+32;

for (var i = 0; i < array_length_1d(global.numberKeys); ++i) 
{
	if (global.numberKeys[i]) 
	{
		scr_dragTower(i);	
	}
}

if global.holdingTower != noone 
{ // Hvis du holder noe.
	with (global.holdingTower) 
	{ // sett X & Y = "snappy" X & Y (basert på mus)
		x = other.snap_x;
		y = other.snap_y;
		
		if ( place_meeting(x, y, obj_Path) || place_meeting(x, y, obj_TowerPlaced_Parent) ) currentPlaceableState = dragTowerStates.unplaceable;
		else currentPlaceableState = dragTowerStates.placeable;
	}
}

if global.rmb_pressed instance_destroy(global.holdingTower);