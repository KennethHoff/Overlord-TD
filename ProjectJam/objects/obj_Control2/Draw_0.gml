draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_text(10, 20, "Coins: " + string(global.coins));
draw_text(10, 40, "Level: " + string(global.level));
draw_text(10, 60, "Lives: " + string(global.lifeAmount));
draw_text(10, 80, "Enemies:" + string(global.enemiesRemaining));
draw_text(10, 100, "Gamespeed:" + string(global.gamespeed));