extends Node2D

@onready var button: Button = $Button
const LVL_SELECT = preload("res://scenes/lvl_select.tscn")

func _ready() -> void:
	button.pressed.connect(change_scene)

func change_scene():
	get_tree().change_scene_to_packed(LVL_SELECT)
	
