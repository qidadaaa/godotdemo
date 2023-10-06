extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D

var speed = 200

func _physics_process(delta):
	
	var dir = Vector2(Input.get_axis("a", "d"), Input.get_axis("w", "s"))
	velocity = dir.normalized() * speed
	move_and_slide()
	
	if dir.x != 0:
		animated_sprite_2d.flip_h = dir.x < 0
	
