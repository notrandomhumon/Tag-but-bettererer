extends Area2D
var direction = "right"
func _ready() -> void:
	direction = Idkatp.blue_direction
func get_shot():
	print("o shoot i got shot ahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh")
func _process(delta: float) -> void:
	if Idkatp.blue_direction == "right":
		$Sprite2D.flip_h = true
		
	elif Idkatp.blue_direction == "left":
		$Sprite2D.flip_h = false
	global_position.x += 500*delta
