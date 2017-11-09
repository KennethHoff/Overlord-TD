key_r = keyboard_check_pressed(ord("R"));
global.lmb = mouse_check_button_pressed(mb_left);

if (key_r) {
	game_restart();
}
