extends CharacterBody2D



func _determine_direction():
	return

func _physics_process(delta):
	velocity = Vector2(-1,0)
	move_and_collide(velocity * delta * 20)
