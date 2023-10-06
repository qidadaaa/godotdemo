extends Leaf

func run_task(actor: CharacterBody2D, blackboard):
	
	var home_position = blackboard.get_value("home_position")
	
	if not home_position:
		return FAILED
	
	actor.move_to_target(home_position)
	
	if actor.position.distance_to(home_position) < 5:
		actor.position = home_position
		return SUCCESS
	
	return FAILED
