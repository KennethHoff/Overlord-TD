alarm[0] = room_speed;

global.AI_grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 32, 32);
global.path = path_add();

mp_grid_add_instances(global.AI_grid, obj_wall, false);

scr_Define_Path();

show_debug_overlay(true);