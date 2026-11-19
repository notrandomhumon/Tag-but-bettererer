extends CharacterBody2D

const SPEED = 225.0
const JUMP_VELOCITY = -475.0
const COYOTE_TIME := 0.1
const JUMP_BUFFER_TIME := 0.1
var direction_facing = "right"
var double_jump_collected := false
var can_double_jump := false
var coyote_timer := 0.0
var jump_buffer_timer := 0.0
var power_up_duration = Idkatp.power_up_duration
var is_tagged := true
@onready var animated_sprite = $AnimatedSprite2D

func jump():
	velocity.y = JUMP_VELOCITY
func add_a_gun():
	pass
	
func _physics_process(delta: float) -> void:
	#controls direction
	var direction := Input.get_axis("a", "d")
	if direction < 0:
		Idkatp.blue_direction = "left"
		animated_sprite.flip_h = true
	elif direction > 0:
		Idkatp.blue_direction = "right"
		animated_sprite.flip_h = false
	#controls tagging arrow
	if is_tagged:
		$Blue_arrow.visible = true
	else:
		$Blue_arrow.visible = false
		
	#controls double jump
	if double_jump_collected:
		if power_up_duration > 0:
			power_up_duration -= delta
		else:
			double_jump_collected = false
			power_up_duration = Idkatp.power_up_duration
	
		
	#honestly i have no idea wat dis does
	
	#controls jumping
	if Input.is_action_just_pressed("w") and can_double_jump:
		jump()
		can_double_jump = false
	if not is_on_floor():
		velocity += get_gravity() * delta
		coyote_timer -= delta
		 
	else:
		coyote_timer = COYOTE_TIME
		if double_jump_collected:
			can_double_jump = true
	if Input.is_action_just_pressed("w"):
		if not is_on_floor and can_double_jump:
			jump()
			print("double jumped")
			can_double_jump = false
		else:
			jump_buffer_timer = JUMP_BUFFER_TIME
			
			
			
	else:
		jump_buffer_timer -= delta
	
	if jump_buffer_timer > 0.0 and coyote_timer > 0.0:
		jump()
		coyote_timer = 0.0 
		jump_buffer_timer = 0.0
	#controls movement things
	
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		

	move_and_slide()
	
	#direction
	if direction < 0:
		Idkatp.blue_direction = "left"
	elif direction > 0:
		Idkatp.blue_direction = "right"

	if not is_on_floor():
		if velocity.y < 0:
			animated_sprite.play("jump")
		else:
			animated_sprite.play("fall")
	else:
		if direction != 0:
			animated_sprite.play("Run")
		else:
			animated_sprite.play("Idle")
	print("Blue: " + Idkatp.blue_direction)
	print("Red: " + Idkatp.red_direction)
