var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;

xx= (xx - width/2);
yy= (yy - width/2);

if(mouse_x > xx and mouse_x < xx + width){
	if(mouse_y > yy and mouse_y < yy+height){
		return true;
	}else return false;
}else return false;
