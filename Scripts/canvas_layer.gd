extends CanvasLayer

var time_left = 30
var still_running = true
func _ready():
	$Label.modulate = Color.ALICE_BLUE
func _physics_process(delta: float) -> void:
	if time_left >= 0:
		time_left -= delta
		$Label.self_modulate = Color.WHITE
		$Label.text = str(int(time_left))
	if time_left <= 20 and time_left > 10:
		$Label.self_modulate = Color.YELLOW
	elif time_left <= 10 and time_left > 5:
		$Label.self_modulate = Color.ORANGE
	elif time_left <= 5:
		$Label.self_modulate = Color.RED
	elif time_left <= 0	:
		$Label.self_modulate = Color.BLACK
