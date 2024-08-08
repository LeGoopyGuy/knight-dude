extends Node2D
@onready var timer = $Timer
@onready var audio_stream_player = $AudioStreamPlayer

func _ready():
	timer.timeout.connect(_on_timer_timeout)
	timer.start()
	audio_stream_player.play()
	
	
func _on_timer_timeout():
	get_tree().quit()
