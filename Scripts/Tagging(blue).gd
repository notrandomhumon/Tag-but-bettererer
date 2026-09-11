extends Area2D
@onready var blue_character: CharacterBody2D = $".."
@onready var red_character: CharacterBody2D = %red_character




func _on_body_entered(body) -> void:
	if (body.name == "red_character"):
		print("amonsawdgus")
		if blue_character.is_tagged:
			red_character.is_tagged = true
			blue_character.is_tagged = false
