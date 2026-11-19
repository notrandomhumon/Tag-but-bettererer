extends Node2D

@onready var bullet_ref = load("res://scenes/bullet.tscn")
var gun_owner = get_parent()
@onready var gun_sprite: Sprite2D = $Gun_sprite
# Called when the node enters the scene tree for the first time.
func shoot():
	var bullet = bullet_ref.instantiate()
	bullet.global_position = global_position
	print(get_tree().current_scene.name)
	get_tree().current_scene.add_child(bullet)
	
		
func _ready() -> void:
	get_child(0).flip_h = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#if gun_owner.name == "blue_character":
	if Input.is_action_just_pressed("shoot_blue"):
		print("shooting i think")
		shoot()
		
	if Idkatp.blue_direction == "right":
		position = Vector2(26, 0)
		gun_sprite.flip_h = true
		
	elif Idkatp.blue_direction == "left":
		position = Vector2(-26, 0)
		gun_sprite.flip_h = false
		
	
	
