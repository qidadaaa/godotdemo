extends Behavior_Tree

class_name Root_Node

@export var active: bool = true

var blackboard = Blackboard.new()
var enemy_home

func _ready():
	
	enemy_home = get_parent().position
	
	if get_child_count() < 1:
		active = false

func _physics_process(delta):
	
	if not active:
		return
	
	blackboard.set_value("delta", delta)
	blackboard.set_value("home_position", enemy_home)
	get_child(0).run_task(get_parent(), blackboard)
