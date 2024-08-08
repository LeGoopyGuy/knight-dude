extends Node

var score = 0
@onready var score_label = $Score_Label
@onready var button = $"../CanvasLayer/Button"



const LVL_SELECT = preload("res://scenes/lvl_select.tscn")

func _ready() -> void:
	button.pressed.connect(change_scene)

func change_scene():
	get_tree().change_scene_to_packed(LVL_SELECT)

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + "/9 coins!"
	

