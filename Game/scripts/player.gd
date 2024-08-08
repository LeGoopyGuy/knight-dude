extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
const ACCEL = 20.0
const FRICTION = 15.0
const DASH_SPEED = 500.0
const MAX_STAM = 100.0
const DASH_COST = 56.9 + PI #for dino 

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animated_sprite = $AnimatedSprite2D
@onready var jump = $Jump

var stamina = MAX_STAM

 

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump.play()
		
	if stamina < MAX_STAM:
		stamina += 1
	if stamina <= PI:
		get_tree().change_scene_to_file("res://scenes/Heart Attack.tscn")
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	
	if Input.is_action_just_pressed("dash"):
		if stamina - DASH_COST >= 0:
			velocity.x = DASH_SPEED * direction
			stamina -= DASH_COST
		
		
	
	
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	
	if direction == 1:
		if velocity.x < SPEED:
			velocity.x += ACCEL
		elif velocity.x >SPEED:
			velocity.x -= ACCEL
		else:
			velocity.x = SPEED
	elif direction == -1:
		if velocity.x > -SPEED:
			velocity.x -= ACCEL
		elif velocity.x < -SPEED:
			velocity.x += ACCEL
		else:
			velocity.x = -SPEED
	else:
		if velocity.x > FRICTION:
			velocity.x -= FRICTION
		elif velocity.x < -FRICTION:
			velocity.x += FRICTION
		else:
			velocity.x = 0

	move_and_slide()
