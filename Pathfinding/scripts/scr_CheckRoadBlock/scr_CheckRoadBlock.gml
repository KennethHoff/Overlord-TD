with (obj_RoadBlock) {
	if (blockedPath == other.rand) {
		if blocking {
			show_debug_message("Path blocked.");
			
			return false; // Returnerer false (Blokkert.)
		}

		show_debug_message("Path passable.");
		
		return true; // Returner true (Kan gå videre.)
	}
}