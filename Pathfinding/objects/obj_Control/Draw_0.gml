var enemyAmount = instance_number(obj_Enemy);
var enemyString;

if (enemyAmount = 1) {
	enemyString = "Enemy";
}
else {
	enemyString = "Enemies";	
}
var textString = enemyString + " on screen.";
draw_text(100, 50, string(enemyAmount) + string(" ") + string(textString));