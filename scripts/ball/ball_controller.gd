extends CharacterBody2D

var collision
var started = false
var _velocity = Vector2(-1,.2) * 300

func _physics_process(delta):
	print(_velocity)
	collision = move_and_collide(_velocity * delta)
	#Conditionals to handle where the ball should be going. Final if statement handles inital direction.
	if collision:
		#velocity = Vector2(-velocity.x, velocity.y + collision.get_collider_velocity().y)
		_velocity = _velocity.bounce(collision.get_normal()) * 1.01 + collision.get_collider_velocity()
		if _velocity.length() > 2000:
			_velocity = _velocity.normalized() * 2000 
		move_and_collide(_velocity * delta)
		#print(collision.get_collider())
	
	#if collision_count == 0:
		#velocity = Vector2(-1,0)
		#move_and_collide(velocity * delta * 20)
		#collision_count = 1
	#if collision_count == 1:
		#velocity = Vector2(1,0)
		#move_and_collide(velocity * delta * 20)
		#collision_count = 0

	if started == false:
		move_and_collide(_velocity * delta)
		started = true
	
