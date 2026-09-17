extends Node
@onready var red_character: CharacterBody2D = %red_character
@onready var blue_character: CharacterBody2D = %blue_character

var time_left = 5
var still_running = true

func _physics_process(delta: float) -> void:
	time_left -= delta
	if still_running:
		if time_left <= 0:
			if blue_character.is_tagged:
				blue_character.queue_free()
			elif red_character.is_tagged:
				red_character.queue_free()
			still_running = false
	
	
