extends Behavior_Tree

class_name Composite

func _ready():
	if get_child_count() < 1:
		printerr("composite child count < 1")
