extends Node

var keys = 0
var score = 0
@onready var score_label = $Score_Label
@onready var button = $"../CanvasLayer/Button"



const LVL_SELECT = preload("res://scenes/lvl_select.tscn")

func _process(delta):
	pass

func _ready() -> void:
	button.pressed.connect(change_scene)
	

func change_scene():
	get_tree().change_scene_to_packed(LVL_SELECT)

func add_point():
	score += 1
	if score == 9:
		score_label.text = "Congrats! Get the key and beat the level!"
	else:
		score_label.text = "You collected " + str(score) + "/9 coins! get all 9 to get the key!"
	
func add_keys():
	keys += 1
	print (keys)
