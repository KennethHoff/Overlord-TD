pathEnding = scr_Pathfinding2();

switch pathEnding {
	case "initial":
		break;
	case "final":
		scr_SpawnEnemy();
	case "none":
		scr_SpawnEnemy();
		instance_destroy();
		break;
	default:
		break;
}