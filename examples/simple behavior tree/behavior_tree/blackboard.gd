extends RefCounted
class_name Blackboard

var blackboard = {}

func set_value(key, value):
	blackboard[key] = value

func get_value(key, default_value = null):
	
	if blackboard.has(key):
		return blackboard[key]
	return default_value

func has(key):
	return blackboard.has(key)
