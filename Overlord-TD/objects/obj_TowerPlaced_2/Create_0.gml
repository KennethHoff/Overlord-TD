scr_getDefaultTowerStats();

towerInd = Towers.tower_2;
bulletType = bulletTypes.spread;
firingSound = snd_SubmachineGun_Firing;
firingSoundPriority = 3;

maxRange = 100;
fire_rate = room_speed / 10;
bulletDmg = 20;
bulletSpd = 3 * 60 / room_speed;

upgradeCost = 0;

event_inherited(); // Tar all informasjonen fra parent "Create" (toggle variabler)