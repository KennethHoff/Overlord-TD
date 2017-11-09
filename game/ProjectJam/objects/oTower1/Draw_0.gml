draw_self();
if(mouseover(x,y,sprite_width,sprite_height))
draw_circle(x,y,range,true);

var en = instance_nearest(x,y,oEnemy);
if(en != noone){
	if(point_distance(x,y,en.x,en.y)<= range){
		if(!shooting){
			alarm[0]=1;
			shooting = true;
		}
		objectToShoot = en;
		if(mouseover(x,y,sprite_width,sprite_height))
		draw_line(x,y,en.x,en.y);
	}else{
		shooting = false;
		objectToShoot = noone;
	}
}