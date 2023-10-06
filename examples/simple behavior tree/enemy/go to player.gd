extends Leaf

func run_task(actor: Node2D, blackboard):
	var player = blackboard.get_value("player")
	
	if not player:
		return FAILED
	
	actor.move_to_target(player.position)
	
	if actor.position.distance_to(player.position) < 5:
		return FAILED
	
	return SUCCESS
