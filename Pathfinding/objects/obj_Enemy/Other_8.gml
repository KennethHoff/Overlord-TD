var rand = irandom_range(1,3)
var path = ("path_" + string(rand));
show_debug_message(path);
var path_ind = asset_get_index(path)

path_start(path_ind, 10, path_action_stop, true);