extends KinematicBody2D

var velocity = Vector2(0,0)
const playerSpeed = 180
const gravity = 30
const jumpForce = -500

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = playerSpeed
		$Sprite.play("walk")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -playerSpeed
		$Sprite.play("walk_left")
	else:
		$Sprite.play("idle")
		
	velocity.y = velocity.y + gravity
	
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = jumpForce
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.2)
