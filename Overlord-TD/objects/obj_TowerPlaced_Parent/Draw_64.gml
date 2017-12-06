if scr_hover() {
	draw_text(700, 80, "Press 'Delete' to remove Tower. You will be refunded [" + string(refundValue) + "]\nPress 'U' to upgrade Tower. This costs [" + string(upgradeCost) + "]\nTower Level: " + string(towerLevel) + "\n Targetting: " + string(towerTargetString) + "\nEnemies Killed: " + string(enemiesKilled) + "\nDamage Done: " + string(damageDone) + "\nShooting in: " + string((fire_rate-counter) / room_speed));
	scr_tooltip("Tower Level: " + string(towerLevel) + "\n Targetting Mode: " + string(towerTargetString) + "\nEnemies Killed: " + string(enemiesKilled) + "\nDamage Done: " + string(damageDone) + "\nShooting in: " + string((fire_rate-counter) / room_speed), font_Arial, c_blue, c_green, 0.8);
	image_index = 1;	
}
else image_index = 0;