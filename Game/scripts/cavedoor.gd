extends CollisionShape2D
@onready var cave_1 = %"Cave 1"

const LVL_SELECT = preload("res://scenes/lvl_select.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_door_cave_body_entered(player):
	if cave_1.keys > 0:
			get_tree().change_scene_to_packed(LVL_SELECT)
