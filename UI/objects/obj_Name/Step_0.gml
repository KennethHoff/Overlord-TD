with (obj_Map) {
	switch (image_index) {
	case 0:
		name = "Deadwind Pass";
		break;
	case 1:
		name = "Searing Gorge";
		break;
	default:
		name = "Lordaeron";
		break;
	}
}


if ( (character == true && map == true) || (character == false && map == false) ) {
	return;
}
if (character) {
	with (obj_Character) {
		switch (image_index) {
			case 0:
				name = "Charlie";
				break;
			case 1:
				name = "Kurt";
				break;
			default:
				name = "Bob";
				break;
		}
	}
	name = obj_Character.name;
}
if (map) {
	name = obj_Map.name;	
}