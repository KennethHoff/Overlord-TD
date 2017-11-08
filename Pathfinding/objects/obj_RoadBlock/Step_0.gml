if scr_Hover() {
	hovering = true;	
}
else {
	hovering = false;	
}

if hovering{
	if global.lmb {
		show_debug_message(string(blockedPath) + " is set to: " + string(blocking));
		blocking = false;
		scr_CreateList();
	}
}

if (!blocking) visible = false;