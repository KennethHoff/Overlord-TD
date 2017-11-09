initialPath = true;
lifeValue = 1;
hp = 100;

moveSpd = 1 * global.spdMultiplier;


path_ind = path_initial;

path_start(path_ind, moveSpd, path_action_stop, true);

pos = 1;

xx = path_get_point_x(path_ind, pos);
yy = path_get_point_y(path_ind, pos);

//image_xscale = 0.15;
//image_yscale = 0.15;