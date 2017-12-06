maxHP = 100 * global.hpMultiplier;
hp = maxHP;
percentHP = hp / maxHP * 100;
coinGain = 5 * global.coinGainMultipler;
coinLoss = 5 * global.coinLossMultipler;
moveSpd = 1 * global.spdMultiplier;

passedGate = 0;
pos = 0;
show_debug_message("Enemies passed Gate: " + string(global.enemiesPassedGate));
#region Paths

path_start(path_initial, moveSpd, path_action_stop, true);

currentPathState = enemyPathStates.initial;

#endregion