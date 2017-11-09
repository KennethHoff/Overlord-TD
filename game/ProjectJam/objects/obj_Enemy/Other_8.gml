pathEnding = scr_pathfinding();

switch pathEnding {
	case "initial":
			show_debug_message("initial destination reached.");
		break;
	case "final":
			show_debug_message("final destination reached.");
			global.lifeAmount -= lifeValue;
			instance_destroy();
		break;
	case "none":
			show_debug_message("No path to choose. Respawning.");
		scr_spawnEnemy();
		instance_destroy();
		break;
	default:
		break;
}
