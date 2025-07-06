extends CharacterBody2D

var speed = 400
var _velocity

func _physics_process(delta):
	if Input.is_key_pressed(KEY_W) and Input.is_key_pressed(KEY_S):
		_velocity = Vector2(0,0)
	elif Input.is_key_pressed(KEY_W):
		_velocity = Vector2(0,-1) * speed
	elif Input.is_key_pressed(KEY_S):
		_velocity = Vector2(0,1) * speed
	else:
		_velocity = Vector2(0,0)
	var collision = move_and_collide(_velocity * delta)
