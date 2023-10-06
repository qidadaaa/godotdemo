extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D


func move_to_target(target_position):
	velocity = position.direction_to(target_position) * 100
	move_and_slide()
	
	if velocity.x != 0:
		animated_sprite_2d.flip_h = velocity.x < 0
