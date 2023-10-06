extends Composite

func run_task(actor, blackboard):
	for c in get_children():
		
		var response = c.run_task(actor, blackboard)
		
		if response != SUCCESS:
			return response
	
	return SUCCESS
