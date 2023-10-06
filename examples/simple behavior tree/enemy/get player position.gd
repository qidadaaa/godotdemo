extends Leaf

func run_task(actor, blackboard):
	
	var players = get_tree().get_nodes_in_group("player")
	if players.size() > 0:
		blackboard.set_value("player", players[0])
	return SUCCESS
	
