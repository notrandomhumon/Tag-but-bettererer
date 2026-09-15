extends Area2D
@onready var blue_character: CharacterBody2D = %blue_character
@onready var red_character: CharacterBody2D = %red_character

func _on_body_entered(body) -> void:
	if (body.name == "red_character"):
		if blue_character.is_tagged:
			red_character.is_tagged = true
			blue_character.is_tagged = false
