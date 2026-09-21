extends Area2D

var player_1_ref: Node2D = null
var player_2_ref: Node2D = null

func _on_body_entered(body) -> void:
	if (body.name == 'blue_character'):
		queue_free()
		player_1_ref.double_jump_collected = true
	elif (body.name == 'red_character'):
		queue_free()
		player_2_ref.double_jump_collected = true
