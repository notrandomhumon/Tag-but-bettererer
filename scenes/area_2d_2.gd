extends Area2D
@onready var red_character: CharacterBody2D = %red_character
@onready var blue_character: CharacterBody2D = %blue_character

func _on_body_entered(body) -> void:
	if (body.name == "blue_character"):
		if red_character.is_tagged:
			red_character.is_tagged = false
			blue_character.is_tagged = true
		print("brick")
