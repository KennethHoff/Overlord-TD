// Når muset er over objektet, vil noe skje.
if (mouse_x >= x && mouse_x <= x+sprite_width) && ( (mouse_y >= y ) && ( mouse_y <= y+sprite_height) ) {
	if (mouse_check_button_pressed(mb_left)) {
		room_goto(rm_Game);
	}
}