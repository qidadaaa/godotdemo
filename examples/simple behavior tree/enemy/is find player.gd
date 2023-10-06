extends Leaf

func run_task(actor: CharacterBody2D, blackboard):
	
	var player = blackboard.get_value("player")
	if not player:
		return FAILED
	
	if actor.position.distance_to(player.position) < 80:
		return SUCCESS
	
	return FAILED
