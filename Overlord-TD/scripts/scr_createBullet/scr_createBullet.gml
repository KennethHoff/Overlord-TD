var bullet = instance_create_layer(x, y, "Projectiles", obj_Bullet);
var target = argument0;
{
	bullet.target = target;
	bullet.baseSpeed = bulletSpd * global.gamespeed;
	bullet.speed = bullet.baseSpeed;
	bullet.direction = point_direction(bullet.x, bullet.y, bullet.target.x, bullet.target.y);
	bullet.dmg = bulletDmg;
	bullet.curve = bulletCurve;
	bullet.owner = id;
}