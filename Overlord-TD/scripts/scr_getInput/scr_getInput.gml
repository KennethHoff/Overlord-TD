global.key_r_pressed = keyboard_check_pressed(ord("R"));
global.key_q_pressed = keyboard_check_pressed(ord("Q"));
global.key_u_pressed = keyboard_check_pressed(ord("U"));
global.key_n_pressed = keyboard_check_pressed(ord("N"));
global.key_c_pressed = keyboard_check_pressed(ord("C"));
global.key_f_pressed = keyboard_check_pressed(ord("F"));
global.key_s_pressed = keyboard_check_pressed(ord("S"));
global.key_w_pressed = keyboard_check_pressed(ord("W"));
global.key_m_pressed = keyboard_check_pressed(ord("M"));
global.key_f11_pressed = keyboard_check_pressed(vk_f11);

global.key_space = keyboard_check(vk_space);
	global.key_space_pressed = keyboard_check_pressed(vk_space);
	
global.key_delete_pressed = keyboard_check_pressed(vk_delete);

global.key_shift = keyboard_check(vk_shift);
	global.key_shift_pressed = keyboard_check_pressed(vk_shift);

global.key_ctrl = keyboard_check(vk_control);

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



if !global.key_shift {
	if global.key_add_pressed global.gamespeed += 1;
	if global.key_sub_pressed global.gamespeed -= 1;
}

if global.gamespeed <= global.gamespeedMin global.gamespeed = global.gamespeedMin;
if global.gamespeed >= global.gamespeedMax global.gamespeed = global.gamespeedMax;

//if global.key_space_pressed global.coins += 1000;

if global.key_shift {
	if global.key_r_pressed {
		room_restart();
	}
}

if global.key_shift {
	if global.key_add_pressed {
		scr_newRound(0);
	}
}

if global.key_ctrl {
	if global.key_m_pressed {
		scr_toggleMusic();	
	}
	if global.key_s_pressed {
		scr_toggleSoundEffects();	
	}
}