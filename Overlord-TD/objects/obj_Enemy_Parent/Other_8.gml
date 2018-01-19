#region new Pathfinding

switch currentPathState {
	case enemyPathStates.initial:
		//show_debug_message("Initial path reached.");
			#region selecting a main path

			if global.openPathsListSize > 0 { // Hvis det er noen åpne paths.
				var rand = irandom_range(0,global.openPathsListSize-1);
				var pathFromList = ds_list_find_value(global.openPaths, rand);
				var path = ("path_" + string(pathFromList));
				var path_ind = asset_get_index(path)
				var initialPath = false;
				path_start(path_ind, moveSpd, path_action_stop, true);
			}
			
			#endregion
			currentPathState = enemyPathStates.main;
			
		break;
	case enemyPathStates.main:
		//show_debug_message("Main path reached.");
			#region Enering final path
			
			path_start(path_final, moveSpd, path_action_stop, true);
			
			#endregion
			currentPathState = enemyPathStates.final;
			
		break;
	case enemyPathStates.final:
		//show_debug_message("Final path reached.");
		#region Final path ended
		
		global.coins -= coinLoss;
		//var respawningEnemy = instance_create_layer(x, y, "Enemies", obj_Enemy);
		//respawningEnemy.hp = hp;
		//respawningEnemy.passedGate++;
		//instance_destroy();
		
		if (passedGate == 0) {
			global.enemiesPassedGate++;
			global.totalEnemiesPassedGate++;
		}
		passedGate++;
		pos = 0;
		//image_xscale = image_xscale * 2;
		//image_yscale = image_yscale * 2;
		
		currentPathState = enemyPathStates.initial;
		path_start(path_initial, moveSpd, path_action_stop, true);
		
		//show_debug_message("Instance respawned. ");
		
		#endregion
		
		break;
}

#endregion



#region Old Pathfinding

//pathEnding = scr_pathfinding();

//switch pathEnding {
//	case "initial":
			
//			show_debug_message("initial destination reached.");
//		break;
		
//	case "main": 
//		show_debug_message("main destination reached.");
//		break;
//	case "final":
//			show_debug_message("final destination reached.");
//			global.coins -= (coinValue * 5) * global.coinLossMultipler;
//			instance_destroy();
//		break;
//	case "none":
//			show_debug_message("No path to choose. Respawning.");
//		scr_spawnEnemy();
//		instance_destroy();
//		break;
//	default:
//		break;
//}
#endregion