maxHP = 100 * global.hpMultiplier;
hp = maxHP;
percentHP = hp / maxHP * 100;
coinGain = 5 * global.coinGainMultipler;
coinLoss = 5 * global.coinLossMultipler;
moveSpd = 120 / room_speed * global.enemySpdMultiplier;

passedGate = 0;
pos = 0;
#region Paths

path_start(path_initial, moveSpd, path_action_stop, true);

currentPathState = enemyPathStates.initial;

#endregion