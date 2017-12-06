var towerIndex = argument0;
var towerCost = ds_map_find_value(global.towers, towerIndex);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(x, y, string(towerCost) );