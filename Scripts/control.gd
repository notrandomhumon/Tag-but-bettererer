extends Control
# Called when the node enters the scene tree for the first time.

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tag_map_1.tscn")

func _on_dont_play_pressed() -> void:
	get_tree().quit()
