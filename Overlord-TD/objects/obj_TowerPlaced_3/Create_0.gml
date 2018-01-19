scr_getDefaultTowerStats();

towerInd = Towers.tower_3;
bulletType = bulletTypes.bullet;
firingSound = snd_Sniper_Firing;
firingSoundPriority = 4;

minRange = 100;
maxRange = -1;
fire_rate = room_speed / 1;
bulletDmg = 50;
bulletSpd = 15 * 60 / room_speed;
bulletCurve = 5;


upgradeCost = 0;

event_inherited(); // Tar all informasjonen fra parent "Create" (toggle variabler)