extends Node2D
#spawns stuf
@onready var red_character: CharacterBody2D = %red_character
@onready var blue_character: CharacterBody2D = %blue_character
@onready var canvas_layer: CanvasLayer = $CanvasLayer


var possible_coords = [Vector2(-94, -474),Vector2(397, -601),Vector2(405, -384),Vector2(868, -574),Vector2(1034, -462)]


var earliest_time_until_spawn = Idkatp.earliest_time_until_spawn
var latest_time_until_spawn = Idkatp.latest_time_until_spawn
var time_until_spawn = randi_range(earliest_time_until_spawn, latest_time_until_spawn)
#= randi_range(earliest_time_until_spawn, latest_time_until_spawn)
@onready var scene = load("res://scenes/Double jump.tscn")
func ready():
	print(";alksdjf")
	time_until_spawn = float(time_until_spawn)
	
func spawn_double_jump(coords):
	var scene_to_spawn = scene.instantiate()
	scene_to_spawn.player_1_ref = blue_character
	scene_to_spawn.player_2_ref = red_character
	add_child(scene_to_spawn)
	scene_to_spawn.set_global_position(coords)
	time_until_spawn = randi_range(earliest_time_until_spawn, latest_time_until_spawn)
	print(time_until_spawn)
func _process(delta):
	time_until_spawn -= delta
	if time_until_spawn <= 0:
		print("thingy")
		spawn_double_jump(possible_coords[randi_range(0, 4)])
	
	
	
