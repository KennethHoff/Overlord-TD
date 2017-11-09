if(instance_exists(objectToShoot)){
	var bullet = instance_create_depth(x,y,-9,obj_Bullet);
	bullet.speed = 10;
	bullet.direction = point_direction(x,y,objectToShoot.x,objectToShoot.y);
	bullet.dmg = bulletDmg;
	alarm[0] = fire_rate;
}
else {
	shooting = false;
}