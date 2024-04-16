extends CharacterBody2D


enum State {
	IDLE,
	WALK
}

var current_state = State.IDLE
var direction = Vector2.ZERO
var speed = 90

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	direction = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down"))

	if direction != Vector2.ZERO:
		current_state = State.WALK

		if direction.x != 0:
			animated_sprite_2d.flip_h = direction.x < 0
	else:
		current_state = State.IDLE

	match current_state:
		State.IDLE:
			animated_sprite_2d.play("idle")
		State.WALK:
			animated_sprite_2d.play("walk")
			velocity = direction.normalized() * speed
			move_and_slide()
