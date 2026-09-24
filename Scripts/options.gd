extends Control

@onready var h_slider: HSlider = $HSlider
@onready var h_slider_2: HSlider = $HSlider2

# Called when the node enters the scene tree for the first time.
@onready var earliest_time_until_spawn = 20.0
var latest_time_until_spawn = 25.0
func _ready() -> void:
	h_slider.value = Idkatp.earliest_time_until_spawn
	h_slider_2.value = Idkatp.latest_time_until_spawn

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_h_slider_value_changed(value: float) -> void:
	earliest_time_until_spawn = value
	$Label.text = str(earliest_time_until_spawn)
	Idkatp.earliest_time_until_spawn = value
	


func _on_h_slider_2_value_changed(value: float) -> void:
	latest_time_until_spawn = value
	$Label5.text = str(latest_time_until_spawn)
	Idkatp.latest_time_until_spawn = value
