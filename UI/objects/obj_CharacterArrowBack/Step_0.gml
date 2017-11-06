// Når muset er over objektet, vil spriten forandre seg.
if ( (mouse_x >= x && mouse_x <= x+sprite_width) && ( (mouse_y >= y ) && ( mouse_y <= y+sprite_height) )){
	//if ( !(character == true && map == true) && !(character == false && map == true) ) {
	//	return;
	//}
	
	if (character && !map) {
		if (mouse_check_button_pressed(mb_left)) {
			obj_Character.image_index--;
			show_debug_message("Clicked on Character Back Arrow");
			return;
		}
	}
	if (map && !character) {
		if (mouse_check_button_pressed(mb_left)) {
			obj_Map.image_index--;
			show_debug_message("Clicked on Map Back Arrow");
			return; 
		}
	}
}