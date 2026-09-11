extends Timer
@onready var blue_character: CharacterBody2D = %blue_character

func _ready() -> void:
	start()
func _on_timer_timeout():
	blue_character.test_variable = true
	
	
