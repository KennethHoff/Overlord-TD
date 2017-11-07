//Player input
Key_down = keyboard_check (vk_down)or keyboard_check(ord("S")); 
Key_jump = keyboard_check (vk_up)or keyboard_check(ord("W"));

//calculate movement
var move = Key_down - Key_jump;
vsp = move * walksp;
y = y + vsp;

