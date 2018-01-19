scr_getDefaultTowerStats();

towerInd = Towers.tower_1;
bulletType = bulletTypes.bullet;
firingSound = snd_Rifle_Firing;
firingSoundPriority = 2;

maxRange = 150;
fire_rate = room_speed / 3;
bulletDmg = 25;
bulletSpd = 2 * 120 / room_speed;

homing = true;

upgradeCost = 0;

event_inherited(); // Tar all informasjonen fra parent "Create" (toggle variabler)