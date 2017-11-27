switch (currentPlaceableState) {
	case dragTowerStates.placeable:
		if global.lmb_pressed 
		{
			scr_createTowerSnap(); 
			show_debug_message("Placed tower.");
		}
		col = global.placeableCol
		break;
		
	case dragTowerStates.unplaceable:
		col = global.errorCol;
		break;
}