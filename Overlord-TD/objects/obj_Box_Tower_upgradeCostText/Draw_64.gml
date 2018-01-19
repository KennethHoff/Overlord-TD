if towerID == noone return;
var upgradeText, refundText;

if towerID.upgradeCost != -1 { // Hvis den kan bli oppgradert
	//if (obj_Control.currentGameState == gameState.newGame) { // Hvis spillet ikke har startet.
		upgradeText = "Cost to upgrade: " + string(towerID.upgradeCost);
		refundText = "Refund value: " + string(towerID.refundValue);
		//}
	 //upgradeText = "Cost to upgrade:" + string(towerID.upgradeCost) + "\nRefund value: " + string(towerID.refundValue);
}

else { // Hvis den ikke kan bli oppgradert
	upgradeText = "";
	refundText = "\nRefund value: " + string(towerID.refundValue);
	targettingModeText = "";
}

draw_set_halign(fa_center);
if upgradeText != "" draw_text(x, y-13, upgradeText);

if refundText != ""  {
	if upgradeText != "" draw_text(x, y-13 + string_height(upgradeText), refundText);
	else draw_text(x, y-13, refundText);
}