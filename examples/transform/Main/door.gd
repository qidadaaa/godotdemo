extends AnimatedSprite2D

@onready var static_body_2d: StaticBody2D = $StaticBody2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		play("open")
		static_body_2d.collision_layer = 2

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		play("close")
		static_body_2d.collision_layer = 1
