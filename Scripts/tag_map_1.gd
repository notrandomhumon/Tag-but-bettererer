extends Node2D
#spawns stuff

var possible_coords = [Vector2(-94, -474),Vector2(397, -601),Vector2(405, -384),Vector2(868, -574),Vector2(1034, -462)]

var time_until_spawn = 3.0

@onready var scene = load("res://scenes/Double jump.tscn")
func spawn_double_jump(coords):
	var scene_to_spawn = scene.instantiate()
	add_child(scene_to_spawn)
	scene_to_spawn.set_global_position(coords)
func _process(delta):
	print(time_until_spawn)
	time_until_spawn -= delta
	if time_until_spawn <= 0:
		spawn_double_jump(possible_coords[randi_range(0, 4)])
		time_until_spawn = 3.0
	
	
	
