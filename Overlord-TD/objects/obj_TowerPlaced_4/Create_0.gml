scr_getDefaultTowerStats();

towerInd = Towers.tower_cannon;
bulletType = bulletTypes.cannonball;
firingSound = -1;
firingSoundPriority = -1;

maxRange = 100;
fire_rate = room_speed * 1.5;
bulletDmg = 20;
bulletExplosionRadius = 50;
bulletSpd = 2 * 60 / room_speed;
bulletCurve = 2;

clusterBombDamage = -1;
clusterBombAmount = 0;
clusterBombDistance = 10;
clusterBombExplosionRadius = 10;
		
upgradeCost = 100;

event_inherited(); // Tar all informasjonen fra parent "Create" (toggle variabler)