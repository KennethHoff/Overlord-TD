key_r = keyboard_check_pressed(ord("R"));
key_space = keyboard_check_pressed(vk_space);
key_1 = keyboard_check_pressed(ord("1"));
key_2 = keyboard_check_pressed(ord("2"));
key_3 = keyboard_check_pressed(ord("3"));

lmb_click = mouse_check_button_pressed(mb_left);
lmb_released = mouse_check_button_released(mb_left);

rmb_click = mouse_check_button_pressed(mb_right);
rmb_released = mouse_check_button_released(mb_right);


if key_space global.coins += 100;

if key_1 scr_dragTower(1);
if key_2 scr_dragTower(2);
if key_3 scr_dragTower(3);

if rmb_click instance_destroy(global.holdingTower);