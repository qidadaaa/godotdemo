extends Area2D


func _ready() -> void:
	connect("body_entered", _on_body_entered)
	connect("body_exited", _on_body_exited)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		#get_parent().modulate = Color(1,1,1,0)
		get_parent().hide()

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		#get_parent().modulate = Color(1,1,1,1)
		get_parent().show()
