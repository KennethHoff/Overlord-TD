scr_startShooting();

if hovering && !clickedOnce draw_text(600, 35, "Click twice to remove Tower.\nYou will *not* be refunded anything.");
if hovering && clickedOnce draw_text(600, 35, "Click to remove Tower.\nYou will *not* be refunded anything.");

draw_self();