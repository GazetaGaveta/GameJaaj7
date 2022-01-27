extends KinematicBody2D

var vel = Vector2(0,0)



func _physics_process(delta):
	
	if Input.is_action_pressed("right"):
		vel.x=20
	
	move_and_slide(vel)
	vel.x=lerp(vel.x,0,0.1)
	
	var collision = move_and_collide(vel)
	if collision:
		var collider = collision.collider
		print(collider.get_instance_id())
		print(collider.get_indexed())	
		print(collider)
