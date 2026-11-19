extends Control

@onready var h_slider: HSlider = $HSlider
@onready var h_slider_2: HSlider = $HSlider2
@onready var h_slider_3: HSlider = $HSlider3
@onready var h_slider_4: HSlider = $HSlider4
# Called when the node enters the scene tree for the first time.
var earliest_time_until_spawn = 20.0
var power_up_duration = 10.0
var latest_time_until_spawn = 25.0
var total_time = 120.0
func _ready() -> void:
	h_slider.value = Idkatp.earliest_time_until_spawn
	h_slider_2.value = Idkatp.latest_time_until_spawn
	h_slider_3.value = Idkatp.total_time
	h_slider_4.value = Idkatp.power_up_duration

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


func _on_h_slider_3_value_changed(value: float) -> void:
	total_time = value
	$Label6.text = str(total_time)
	Idkatp.total_time = total_time


func _on_h_slider_4_value_changed(value: float) -> void:
	power_up_duration = value
	$Label7.text = str(power_up_duration)
	Idkatp.power_up_duration = power_up_duration
	
