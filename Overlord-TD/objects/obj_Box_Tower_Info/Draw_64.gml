if towerID == noone return;

draw_set_halign(fa_center);
textToDrawLeft = "Level:" + string(towerID.towerLevel);
textToDrawMiddle = "Kills: " + string(towerID.enemiesKilled);
textToDrawRight =  "Damage Done: " + string(round(towerID.damageDone));

draw_text(x, y, textToDrawLeft + " | " + textToDrawMiddle + " | " + textToDrawRight);

//draw_set_halign(fa_left);
//draw_set_halign(fa_right);
//draw_set_halign(fa_center);