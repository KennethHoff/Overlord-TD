scr_startShooting();

if hovering && !clickedOnce draw_text(600, 35, "Click twice to remove Tower.\nYou will *not* be refunded Money.");
if hovering && clickedOnce draw_text(600, 35, "Click to remove Tower.\nYou will *not* be refunded Money.");

draw_self();