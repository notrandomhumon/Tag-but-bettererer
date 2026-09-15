extends Area2D
@onready var blue_character: CharacterBody2D = %blue_character
@onready var red_character: CharacterBody2D = %red_character

func _on_body_entered(body) -> void:
	print("blue detect ", body.name)
	if (body.name == "red_character"):
		print("blue detect ", body.name)
		if blue_character.is_tagged:
			red_character.is_tagged = true
			blue_character.is_tagged = false
			print("blue tagged red")
		elif red_character.is_tagged:
			print("red tagged blue")
			red_character.is_tagged = false
			blue_character.is_tagged = true
