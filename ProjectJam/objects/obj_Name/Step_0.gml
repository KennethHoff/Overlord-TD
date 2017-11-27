// Velger Map basert på hvilket bildet er valgt.
if (map && !character) {
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
	name = obj_Map.name;	
}

// Velger Character basert på hvilket bildet er valgt.
if (character && !map) {
	with (obj_Character) { 
		switch (image_index) {
			case 0:
				name = "Charlie";
				break;
			case 1:
				name = "supercalifragilisticexpialidocious";
				break;
			default:
				name = "Bob";
				break;
		}
	}
	name = obj_Character.name;
}