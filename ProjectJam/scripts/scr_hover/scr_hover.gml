xx = x - sprite_width/2;
yy = y - sprite_height/2;

if ( (mouse_x >= xx && mouse_x < xx + sprite_width) && (mouse_y >= yy && mouse_y <= yy + sprite_height) ) {
	return true;
}
return false;