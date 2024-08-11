extends StaticBody2D

@onready var game_manager = %"Game Manager"




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if game_manager.score >= 9:
		set_deferred("disabled", true)
