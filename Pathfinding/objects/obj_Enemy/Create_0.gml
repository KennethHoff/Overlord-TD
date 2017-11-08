initialPath = true;

movespd = 5;

path_start(path_initial, movespd, path_action_stop, true);
path_ind = path_initial;

pos = 1;
xx = path_get_point_x(path_ind, pos);
yy = path_get_point_y(path_ind, pos);

//with instance_find(obj_RoadBlock, 0) {
//	instance_destroy();
//}

alarm[0] = room_speed * 2;