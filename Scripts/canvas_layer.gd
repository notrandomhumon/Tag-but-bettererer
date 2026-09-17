extends CanvasLayer

var time_left = 30
var still_running = true

func _physics_process(delta: float) -> void:
	if time_left >= 0:
		time_left -= delta
		$Label.text = str(int(time_left))
	if time_left <= 20 and time_left > 10:
		$Label.modulate = Color.YELLOW
	if time_left <= 10 and time_left > 5:
		$Label.modulate = Color.ORANGE
	if time_left <= 5:
		$Label.modulate = Color.RED
