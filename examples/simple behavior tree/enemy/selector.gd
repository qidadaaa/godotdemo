extends Composite

func run_task(actor, blackboard):
	
	for c in get_children():
		
		var response = c.run_task(actor, blackboard)
		
		# selector 遍历子节点, 直到返回success, 终止遍历
		if response != FAILED:
			return response
		
	return FAILED
