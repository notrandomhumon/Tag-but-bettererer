extends Node



@onready var earliest_time_until_spawn = 20.0
@onready var latest_time_until_spawn = 25.0
func _process(delta: float) -> void:
	print(earliest_time_until_spawn)
	print(latest_time_until_spawn)
