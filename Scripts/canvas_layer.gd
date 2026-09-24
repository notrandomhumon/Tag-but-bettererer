extends CanvasLayer

@onready var label: Label = %Label
@onready var blue_character: CharacterBody2D = %blue_character
@onready var red_character: CharacterBody2D = %red_character

var time_left = 120
var still_running = true
func _ready():
	label.modulate = Color.ALICE_BLUE
func _physics_process(delta: float) -> void:
	time_left -= delta
	if time_left < 0 and still_running:
		if blue_character.is_tagged == true:
			blue_character.queue_free()
		elif red_character.is_tagged == true:
			red_character.queue_free()
		still_running = false
	if time_left <= -3:
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	elif time_left >= 0:
		$Label.self_modulate = Color.WHITE
		$Label.text = str(int(time_left))
	if time_left <= 20 and time_left > 10:
		$Label.self_modulate = Color.YELLOW
	elif time_left <= 10 and time_left > 5:
		$Label.self_modulate = Color.ORANGE
	elif time_left <= 5:
		$Label.self_modulate = Color.RED
	elif time_left < 0:
		$Label.self_modulate = Color.BLACK
		print("done")
