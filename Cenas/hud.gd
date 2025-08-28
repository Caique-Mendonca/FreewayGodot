extends CanvasLayer
signal reinicia

@onready var TimerFim: Timer = $"../TimerFim"
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Tempo.text = ("Tempo: " + str(int(TimerFim.time_left)))


func _on_button_pressed() -> void:
	emit_signal("reinicia")
