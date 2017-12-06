global.key_r_pressed = keyboard_check_pressed(ord("R"));
global.key_q_pressed = keyboard_check_pressed(ord("Q"));
global.key_u_pressed = keyboard_check_pressed(ord("U"));

global.key_space = keyboard_check(vk_space);
	global.key_space_pressed = keyboard_check_pressed(vk_space);
	
global.key_delete_pressed = keyboard_check_pressed(vk_delete);

global.key_shift = keyboard_check(vk_shift);
global.key_shift_pressed = keyboard_check_pressed(vk_shift);

global.lmb = mouse_check_button(mb_left);
	global.lmb_pressed = mouse_check_button_pressed(mb_left);
	global.lmb_released = mouse_check_button_released(mb_left);
global.rmb = mouse_check_button(mb_right);
	global.rmb_pressed = mouse_check_button_pressed(mb_right);
	global.rmb_released = mouse_check_button_released(mb_right);
global.mmb = mouse_check_button(mb_middle);
	global.mmb_pressed = mouse_check_button_pressed(mb_middle);
	global.mmb_released = mouse_check_button_released(mb_middle);

global.key_add_pressed = keyboard_check_pressed(vk_add);
global.key_sub_pressed = keyboard_check_pressed(vk_subtract);

global.numberKeys_pressed = [];

for (var i = 0; i < 10; ++i) 
{
	global.numberKeys_pressed[i] = keyboard_check_pressed(ord(i));
}

for (var i = 0; i < array_length_1d(global.numberKeys_pressed); ++i) 
{
	if global.numberKeys_pressed[i] show_debug_message(string(i) + " pressed.");
}

if global.key_r_pressed room_restart();

if global.key_add_pressed {
	//if global.key_shift global.gamespeed += 0.25;
	//else 
	global.gamespeed += 1;
}

if global.key_sub_pressed {
	//if global.key_shift global.gamespeed -= 0.25;
	//else 
	global.gamespeed -= 1;
}

if global.gamespeed <= global.gamespeedMin {
	global.gamespeed = global.gamespeedMin;	
}

if global.gamespeed >= global.gamespeedMax {
	global.gamespeed = global.gamespeedMax;	
}

if currentGameState == gameState.waiting {
	if global.key_q_pressed {
		currentGameState = gameState.newRound;
	}
}