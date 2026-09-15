extends Area2D
@onready var blue_character: CharacterBody2D = %blue_character
@onready var red_character: CharacterBody2D = %red_character

#func _on_body_entered(body) -> void:
	#print("red detect" + body.name)
	#if (body.name == "blue_character"):
		#print("red detect ", body.name)
		#if red_character.is_tagged:
			#blue_character.is_tagged = true
			#red_character.is_tagged = false
			#print("red tagged blue")
