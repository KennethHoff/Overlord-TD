// Når muset er over objektet, vil spriten forandre seg. Om du da trykker, vil du gå til neste rom. (Character Creation).
if ( (mouse_x >= x && mouse_x <= x+sprite_width) && ( (mouse_y >= y ) && ( mouse_y <= y+sprite_height) )){
	image_index = 1;
	if (mouse_check_button_pressed(mb_left) ) {
		room_goto(rm_GameCreation);
	}
}
else {
	image_index = 0;	
}