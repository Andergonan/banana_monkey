extends KinematicBody2D

var velocity = Vector2(0,0)

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 100
	if Input.is_action_pressed("ui_left"):
		velocity.x = -100
		
	move_and_slide(velocity)
	
	velocity.x = lerp(velocity.x,0,0.2)
