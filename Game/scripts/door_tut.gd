extends CollisionShape2D
@onready var game_manager = %"Game Manager"


const LVL_SELECT = preload("res://scenes/lvl_select.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_door_tut_body_entered(body):
	if game_manager.keys > 0:
			get_tree().change_scene_to_packed(LVL_SELECT)
