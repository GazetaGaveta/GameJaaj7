extends KinematicBody2D

var vel = Vector2(0,0)



func _physics_process(delta):
	
	if Input.is_action_pressed("right"):
		vel.x=500
	
	move_and_slide(vel)
	vel.x=lerp(vel.x,0,0.1)
	
