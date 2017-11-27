global.key_r = keyboard_check_pressed(ord("R"));
global.key_space = keyboard_check_pressed(vk_space);
global.key_delete = keyboard_check_pressed(vk_delete);

global.lmb = mouse_check_button(mb_left);
	global.lmb_pressed = mouse_check_button_pressed(mb_left);
	global.lmb_released = mouse_check_button_released(mb_left);
global.rmb = mouse_check_button(mb_right);
	global.rmb_pressed = mouse_check_button_pressed(mb_right);
	global.rmb_released = mouse_check_button_released(mb_right);


global.numberKeys = [];

for (var i = 0; i < 10; ++i) 
{
	global.numberKeys[i] = keyboard_check_pressed(ord(i));
}



for (var i = 0; i < array_length_1d(global.numberKeys); ++i) 
{
	if global.numberKeys[i] show_debug_message(string(i) + " pressed.");
}

if global.key_r room_restart();